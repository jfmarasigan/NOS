// REQUIRED
function requiredValidation(requiredField) {
    var count = 0;
    for (var i = 0; i < requiredField.length; i++) {
        if ($(requiredField[i]).val().trim().length === 0) {
            $(requiredField[i] + '_error_placeholder').html('<span>This field is required</span>');
            $(requiredField[i] + '_error_placeholder').addClass("show");
        } else {
            $(requiredField[i] + '_error_placeholder').html('');
            $(requiredField[i] + '_error_placeholder').addClass("show");
            count = count + 1;
        }
    }
    if (count === requiredField.length) {
        return true;
    } else {
        return false;
    }
}

// ALPHANUMERIC
function alphanumericValidation(fieldsTovalidate, minLength, maxLength) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var alphanumericBase = /^[A-Za-z0-9]*$/;

            var strLength = minLength + ',' + (maxLength ? maxLength : "");
            var alphanumeric1 = '^[A-Za-z0-9]{' + strLength + '}$';
            var alphanumeric = new RegExp(alphanumeric1)

            if (alphanumericBase.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                if (alphanumeric.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                    $(fieldID + '_error_placeholder').html('');
                } else {
                    $(fieldID + '_error_placeholder').html('<span>Invalid value.</span>');
                    $(fieldID).focus();
                }
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain numbers and/or letters only.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// ALPHANUMERIC WITH SPACE
function alphanumericValidation1(fieldsTovalidate, minLength, maxLength) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var alphanumericBase = /^[A-Za-z0-9\s]*$/;

            var strLength = minLength + ',' + (maxLength ? maxLength : "");
            var alphanumeric1 = '^[A-Za-z0-9\\s]{' + strLength + '}$';
            var alphanumeric = new RegExp(alphanumeric1)

            if (alphanumericBase.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                if (alphanumeric.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                    $(fieldID + '_error_placeholder').html('');
                } else {
                    $(fieldID + '_error_placeholder').html('<span>Invalid value.</span>');
                    $(fieldID).focus();
                }
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain numbers and/or letters only.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// INTEGERS ONLY
function integersOnlyValidation(fieldsTovalidate) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var number = /^[0-9]+$/;
            if (number.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                $(fieldID + '_error_placeholder').html('');
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain numbers only.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// LETTERS ONLY
function lettersOnlyValidation(fieldsTovalidate) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var letters = /^[A-Za-z]+$/;
            if (letters.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                $(fieldID + '_error_placeholder').html('');
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain letters only.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// NUMBERS WITH DECIMAL
function decimalValidation(fieldsTovalidate) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var decimal = /^(\d{1,3}(,\d{3})*|\d+)(\.\d+)?$/;
            if (decimal.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                $(fieldID + '_error_placeholder').html('');
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain numbers only.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// CUSTOM NUMBERS WITH DECIMAL
function customWholeAndDecimalNumberValidation(fieldsTovalidate, wholeNum, decimalNum) {
    fieldsTovalidate.forEach(fieldID => {
        var decimal = /^\d{0,5}(\.\d{1,2})?$/;
        $(fieldID).on('blur', function() {
            if (decimal.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                $(fieldID + '_error_placeholder').html('');
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain ' + {wholeNum} + ' (max) numbers and ' + {decimalNum} + ' (max) decimal numbers.</span>');
                $(fieldID).focus();
            }
        });
    })
}

// NUMBERS WITH DECIMAL
// customNumberDecimalValidation(ID_IN_ARRAY, MIN_WHOLE_NUM, MAX_WHOLE_NUM, MIN_DECIMAL, MAX_DECIMAL)
function customNumberDecimalValidation(fieldsTovalidate, minWhole, maxWhole, minDecimal, maxDecimal) {
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            var wholeLength = minWhole + ',' + (maxWhole ? maxWhole : "");
            var decimalLength = minDecimal + ',' + maxDecimal;
            // var decimal = /^\d{0,5}(\.\d{1,2})?$/;
            
            var decimal1 = '^\\d{' + wholeLength + '}(\\.\\d{' + decimalLength + '})?$';
            var decimal = new RegExp(decimal1)
            
            if (!isNaN($(fieldID).val())) {
                if (decimal.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                    $(fieldID + '_error_placeholder').html('');
                } else {
                    $(fieldID + '_error_placeholder').html('<span>Invalid value.</span>');
                    $(fieldID).focus();
                }
            } else {
                $(fieldID + '_error_placeholder').html('<span>Invalid value. This field should contain numbers and decimals only.</span>');
                $(fieldID).focus();
            }
        });
    })
}


// DATE FORMAT MM/DD/YYYY
function dateValidation(fieldsTovalidate) {
    var count = 0;
    fieldsTovalidate.forEach(fieldID => {
        $(fieldID).on( "blur", function() {
            // var date_regex = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/;
            var date_regex = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/;
            var date_regex_1 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-9]|2[09])[- \/.](19|20)\d\d$/;
            var date_regex_2 = /^(0?[1-9]|1[012])[- \/.](0?[1-9]|[12][0-8]|2[08])[- \/.](19|20)\d\d$/;
            // console.log(fieldID)
            // let dateObj = new Date($(fieldID).val());
            // console.log("dateObj")
            // console.log(dateObj)
            // console.log(!isNaN(dateObj))
            // if (date_regex.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
            //     $(fieldID + '_error_placeholder').html('');
            // } else {
            //     $(fieldID + '_error_placeholder').html('<span>Invalid value. Date format should be mm/dd/yyyy</span>');
            //     count = count + 1;
            //     $(fieldID).focus();
            // }
            if ($(fieldID).val().substring(0,3) === "02/" || $(fieldID).val().substring(0,2) === "2/") {
                var year = '';
                if ($(fieldID).val().length === 10) {
                    year = $(fieldID).val().substring(6, 10);
                } else {
                    year = $(fieldID).val().substring(5, 9);
                }
                if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
                    if (date_regex_1.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                        $(fieldID + '_error_placeholder').html('');
                    } else {
                        count = count + 1;
                        $(fieldID + '_error_placeholder').html('<span>Invalid value. Date format should be mm/dd/yyyy</span>');
                        $(fieldID).focus();
                    }
                } else {
                    if (date_regex_2.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                        $(fieldID + '_error_placeholder').html('');
                    } else {
                        count = count + 1;
                        $(fieldID + '_error_placeholder').html('<span>Invalid value. Date format should be mm/dd/yyyy</span>');
                        $(fieldID).focus();
                    }
                }
            } else {
                if (date_regex.test($(fieldID).val()) || $(fieldID).val().trim().length === 0) {
                    $(fieldID + '_error_placeholder').html('');
                } else {
                    count = count + 1;
                    $(fieldID + '_error_placeholder').html('<span>Invalid value. Date format should be mm/dd/yyyy</span>');
                    $(fieldID).focus();
                }
            }
        });
    })
    if (count > 0) {
        return true;
    } else {
        return false;
    }
}