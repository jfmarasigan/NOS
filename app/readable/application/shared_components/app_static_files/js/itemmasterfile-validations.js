// required field
function requiredFieldValidation(itemID) {
    let fieldValue = $v(itemID).trim();
    let isValid = fieldValue !== '';

    if (!isValid) {
        apex.message.showErrors({
            type: "error",
            location: "inline",
            pageItem: itemID, 
            message: "This field is required."
        });
    } else {

        apex.message.clearErrors([itemID]);
    }

    return isValid; 
}


// has serial number should only be Y or N
/*
function validateHasSerialNumber(pagePrefix) {
    let serialValue = $v(pagePrefix + "HAS_SERIAL_NUMBER").trim();
    let isValid = (serialValue === 'Y' || serialValue === 'N');

    if (!isValid) {
        apex.message.showErrors({
            type: "error",
            location: "inline",
            pageItem: pagePrefix + "HAS_SERIAL_NUMBER",
            message: "Only 'Y' or 'N' is allowed for this field."
        });
    } else {
        apex.message.clearErrors([pagePrefix + "HAS_SERIAL_NUMBER"]);
    }

    return isValid;
}
*/

// input types
function validateFieldPattern(itemID, patternType) {
    let fieldValue = $v(itemID).trim();
    let isValid = false;
    let containOnly = "";

    if (fieldValue === '') {
        return true;
    }
    
    let patterns = {
        numbers: /^[0-9]+$/,
        alphabets: /^[A-Za-z]+$/,
        alphanumeric: /^[A-Za-z0-9\-]+$/,
        decimal: /^(\d{1,3}(,\d{3})*|\d+)(\.\d+)?$/,
        yesNo: /^[YN]$/
    };


    let pattern = patterns[patternType];


    if (!pattern) {
        console.error("Invalid pattern type: " + patternType);
        return false;
    }

    if (patternType === 'numbers' || patternType === 'decimal') {
        containOnly = "numbers.";
    } else if (patternType === 'alphanumeric') {
        containOnly = "numbers and/or letters.";
    } else if (patternType === 'alphabets') {
        containOnly = "letters.";
    } else if (patternType === 'yesNo') {
        containOnly = "N or Y.";
    }

    if (pattern.test(fieldValue)) {
        isValid = true;
        apex.message.clearErrors([itemID]);
    } else {
        apex.message.showErrors({
            type: "error",
            location: "inline",
            pageItem: itemID,
            message: "Invalid value. This field should contain only " + containOnly
        });
    }

    return isValid;
}



// UPC should be unique
function checkUPCWithDB(upcFieldIDs, isUpdatePage) {
    let seen = new Set();
    let promises = [];
    let localErrors = [];

    upcFieldIDs.forEach(upcFieldID => {
        let upcValue = $v(upcFieldID).trim();

        if (upcValue) {

            if (seen.has(upcValue)) {

                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: upcFieldID,
                    message: "UPC cannot be the same."
                });
                localErrors.push(upcFieldID);
            } else {
                seen.add(upcValue);

                if (isUpdatePage && initialValues[upcFieldID] === upcValue) {
                return;
                }

                let promise = new Promise((resolve) => {
                    apex.server.process("CHECK_UPC_PROCESS", {
                        x01: upcValue
                    }, {
                        dataType: "json",
                        success: function(data) {
                            if (data.upc_exists) {
                                apex.message.showErrors({
                                    type: "error",
                                    location: "inline",
                                    pageItem: upcFieldID,
                                    message: "UPC already exists."
                                });
                                resolve(false); 
                            } else {
                                resolve(true); 
                            }
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.error("Error during AJAX call", textStatus, errorThrown);
                            resolve(false); 
                        }
                    });
                });

                promises.push(promise);
            }
        }
    });

    return Promise.all(promises).then(results => {
       // return results.every(result => result === true); 
        let databaseValid = results.every(result => result === true); 
        return databaseValid && localErrors.length === 0;

    });
}

// Optional Fields by group
function validateOptionalFields(fields) {

    let isValid = true;

    let anyValue = fields.some(field => $v(field.id).trim() !== '');

    if (anyValue) {
        
        fields.forEach(field => {
            let fieldValue = $v(field.id).trim();

            if (fieldValue === '') {
                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: field.id,
                    message: "This field is required if any field in the group is filled."
                });
                isValid = false;
            } else if (field.pattern && !validateFieldPattern(field.id, field.pattern)) {
                isValid = false; 
            }

        });
    } else {
       
        fields.forEach(field => {
            apex.message.clearErrors([field.id]);
        });
    }

    return isValid;
}




// validate all fields
function validateAllFields(pagePrefix, fieldsToValidate, upcFieldIDs, optionalFieldGroups, optionalVendorsGroups, vendorLCF, isUpdatePage, uomFields, exciseAndSelling
// , customNumberToValidate
) {
    	let allValid = true;

    fieldsToValidate.forEach(function(field) {
        if (field.required && !requiredFieldValidation(field.id)) {

            allValid = false;

        }
     
        if (field.pattern && $v(field.id).trim() !== '' && !validateFieldPattern(field.id, field.pattern)) {
            allValid = false;
        }

    });

    if (!checkUOM(uomFields)){
        allValid = false;
    }

    optionalFieldGroups.forEach(function(optionalFields) {
        if (!validateOptionalFields(optionalFields)) {
            allValid = false;
        }
    });

    optionalVendorsGroups.forEach(function(optionalVendors) {
        if (!optionalVendorFields(optionalVendors)) {
            allValid = false;
        }
    });

    vendorLCF.forEach(function(eachField){
        if (!validateFieldPattern(eachField.id, eachField.pattern)) {
            allValid = false;
        }
    });

    exciseAndSelling.forEach(function(eachField){
        if (!validateFieldPattern(eachField.id, eachField.pattern)) {
            allValid = false;
        }
    });



    if (!validateVendorCodes()){
        allValid = false;
    }

     return checkUPCWithDB(upcFieldIDs, isUpdatePage).then(upcValid => {
        if (!upcValid) {
            allValid = false;
        }

        return validateItemCombination(pagePrefix, isUpdatePage).then(itemValid => {
            return allValid && itemValid; 
        });
    });


}

// USING POPUP LOV
// Cannot have duplicate vendor codes
// function validateVendorCodes1() {
//     let vendorCodes = [];
//     let isValid = true;


//     $("input[id*='VENDOR_CODE']").each(function () {
//         let vendorCode = $(this).val().trim().toUpperCase();
        
//         if (vendorCode) { 
//             if (vendorCodes.includes(vendorCode)) {
//                 apex.message.showErrors({
//                     type: "error",
//                     location: "inline",
//                     pageItem: $(this).attr('id'), 
//                     message: "Duplicate vendor code: " + vendorCode
//                 });
//                 isValid = false;
//             } else {

//                 vendorCodes.push(vendorCode);

//             }
//         }
//     });

//     return isValid;
// }

// ORIGINAL validateVendorCodes
// Cannot have duplicate vendor codes
function validateVendorCodes() {
    let vendorCodes = [];
    let isValid = true;


    $("a-autocomplete[id*='VENDOR_CODE']").each(function () {
        let vendorCode = $(this).val().trim().toUpperCase();
        
        if (vendorCode) { 
            if (vendorCodes.includes(vendorCode)) {
                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: $(this).attr('id'), 
                    message: "Duplicate vendor code: " + vendorCode
                });
                isValid = false;
            } else {

                vendorCodes.push(vendorCode);

            }
        }
    });

    return isValid;
}

// Item Num and Desc Combination should be unique
function validateItemCombination(pagePrefix, isUpdatePage) {
    let itemNum = $v(pagePrefix + "ITEM_NUM").trim();
    let itemDesc = $v(pagePrefix + "ITEM_DESC").trim();

    if (isUpdatePage) {
        let initialItemNum = initialValues[pagePrefix + "ITEM_NUM"].toUpperCase();
        let initialItemDesc = initialValues[pagePrefix + "ITEM_DESC"].toUpperCase();
        if ( initialItemNum === itemNum.toUpperCase() && initialItemDesc === itemDesc.toUpperCase()) {
            return Promise.resolve(true);
        }
    }

    return new Promise((resolve) => {

        apex.server.process('CHECK_ITEM_UNIQUE', {
            x01: itemNum,
            x02: itemDesc
        }, {
            success: function(data) {
                if (data.success) {
                    resolve(true);  
                } else {

                    apex.message.showErrors({
                        type: "error",
                        location: "inline",
                        pageItem: pagePrefix + "ITEM_DESC",
                        message: "The combination of Item Number and Item Description already exists."
                    });
                    resolve(false);
                }
            },
            error: function() {
                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: pagePrefix + "ITEM_NUM",
                    message: "An error occurred during validation."
                });
                resolve(false); 
            }
        });
    });
}


let initialValues = {};

function trackInitialValues(pagePrefix, upcFieldIDs) {

    initialValues[pagePrefix + "ITEM_NUM"] = $v(pagePrefix + "ITEM_NUM").trim();
    initialValues[pagePrefix + "ITEM_DESC"] = $v(pagePrefix + "ITEM_DESC").trim();

    upcFieldIDs.forEach(function(upcFieldID) {
        //console.log($v(upcFieldID));
        initialValues[upcFieldID] = $v(upcFieldID).trim();
        //console.log("UPC field: " + upcFieldID + " Value:" + initialValues[upcFieldID]);
    });
}

// validate on blur
function validateFieldsOnBlur(fields) {
    fields.forEach(field => {
        const fieldID = field.id;
        const patternType = field.pattern;

        $(`#${fieldID}`).on('blur', function() {
            const fieldValue = $v(fieldID).trim();

            if (fieldValue === '') {
                apex.message.clearErrors([fieldID]);
                return; 
            }


            if (patternType) {
                validateFieldPattern(fieldID, patternType);
            } else {

                apex.message.clearErrors([fieldID]);
            }
        });
    });
}


function vendorCodeBlur(vendorCodeField, vendorItemNo, landedCostFactor) {
    function validateField(field) {
        field.on('blur', function() {
            let fieldID = $(this).attr('id').replace('_input', ''); 
            const fieldValue = $v(fieldID).trim();
            
            if (fieldValue === '') {
                if (field === vendorCodeField){
                   apex.message.clearErrors([vendorCodeField.attr('id')]); 
                };
                apex.message.clearErrors([fieldID]);
                return;
            }
            
            if (field === vendorCodeField) {
                validateFieldPattern(fieldID, 'alphabets');
                validateVendorCodes();
            } else if (field === vendorItemNo) {
                validateFieldPattern(fieldID, 'alphanumeric');
            } else if (field === landedCostFactor) {
                validateFieldPattern(fieldID, 'decimal'); 
            }
        });
    }

    validateField(vendorCodeField);
    validateField(vendorItemNo);
    validateField(landedCostFactor);
}


// Uom cannot be duplicate
function checkUOM(uomFieldIDs) {
    let seen = new Set();
    let isValid = true;


    uomFieldIDs.forEach(uomFieldID => {
        let uomValue = $v(uomFieldID).trim();

        if (uomValue) {
            if (seen.has(uomValue)) {
                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: uomFieldID,
                    message: "UOM cannot be the same."
                });
                isValid = false;
            } else {
                seen.add(uomValue);
                apex.message.clearErrors([uomFieldID]);
            }
        }
    });

    return isValid;
}


function optionalVendorFields(fields) {

    let isValid = true;

    let anyValue = fields.some(field => $v(field.id).trim() !== '');

    if (anyValue) {
        
        fields.forEach(field => {
            let fieldValue = $v(field.id).trim();
            let fieldElement = $("#" + field.id);  // Use the ID to find the jQuery element
            let fieldID = fieldElement.attr('id').replace('_input', '');

            if (fieldValue === '') {
                apex.message.showErrors({
                    type: "error",
                    location: "inline",
                    pageItem: fieldID,
                    message: "This field is required if any field in the group is filled."
                });
                isValid = false;
            } else if (field.pattern && !validateFieldPattern(fieldID, field.pattern)) {
                isValid = false; 
            }

        });
    } else {
       
        fields.forEach(field => {
            let fieldElement = $("#" + field.id);  // Use the ID to find the jQuery element
            let fieldID = fieldElement.attr('id').replace('_input', '');
            apex.message.clearErrors([fieldID]);
        });
    }

    return isValid;
}

// Validation for excise tax and selling factor
function customWholeAndDecimalNumberValidation(fieldsTovalidate) {
    let isValid = true;
    fieldsTovalidate.forEach(fieldID => {
        var decimal = /^\d{0,5}(\.\d{1,2})?$/;
        $(fieldID.id).on('blur', function() {
            if (decimal.test($(fieldID.id).val()) || $(fieldID.id).val().trim().length === 0) {
                $(fieldID.id + '_error_placeholder').html('');
            } else {
                $(fieldID.id + '_error_placeholder').html('<span>Invalid value. This field should contain ' + fieldID.wholeNum + ' (max) numbers and ' + fieldID.decimalNum + ' (max) decimal numbers.</span>');
                // $(fieldID.id).focus();
                isValid = false;
            }
        });
    })
    return isValid;
}