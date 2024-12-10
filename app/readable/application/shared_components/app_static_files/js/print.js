// requires import of qz tray js

qz.security.setCertificatePromise(function(resolve, reject) {
    fetch("/jri/assets/cert.pem", {cache: 'no-store', headers: {'Content-Type': 'text/plain'}})
        .then(function(data) { data.ok ? resolve(data.text()) : reject(data.text()); });
});

qz.security.setSignatureAlgorithm("SHA512");
qz.security.setSignaturePromise(function(toSign) {
    return function(resolve, reject) {
        fetch(`/jri/sign?toSign=${toSign}`, { method: "POST", cache: 'no-store', headers: {'Content-Type': 'text/plain'}})
            .then(function(data) { data.ok ? resolve(data.text()) : reject(data.text()); });
    };
});

function connect() {
    return new Promise(function(resolve, reject) {
        if (qz.websocket.isActive()) {	// if already active, resolve immediately
            resolve();
        } else {
            // try to connect once before firing the mimetype launcher
            qz.websocket.connect().then(resolve, function retry() {
                // if a connect was not successful, launch the mimetime, try 3 more times
                window.location.assign("qz:launch");
                qz.websocket.connect({ retries: 2, delay: 1 }).then(resolve, reject);
            });
        }
    });
}

let physicalPrinters = null;
let defaultPrinter = null;
function getPhysicalPrinters(callback) {
    const virtual = [
        "Microsoft XPS Document Writer",
        "OneNote for Windows 10",
        "Microsoft Print to PDF",
        "Fax"
    ];
    let physical = [];
    connect().then(() => {
        qz.printers.find()
            .then(function(printersList) {
                $.each(printersList, function (index, value) {
                    if (virtual.indexOf(value) === -1 && !value.includes("OneNote")) {
                        physical.push(value);
                    }
                });
                physicalPrinters = physical;
                callback(physicalPrinters);
            });

        qz.printers.getDefault()
            .then(data => {
                defaultPrinter = data;
            });
    });
}

function qzprint(printer, filePath) {
    connect().then(() => {
        const config = qz.configs.create(printer, { orientation: 'portrait' });
        const printData = [{ 
            type: 'pixel',
            format: 'pdf',
            flavor: 'file',
            data: filePath
        }];
        qz.print(config, printData).catch(function(e) { 
            console.error(e); 
        });
    });
}