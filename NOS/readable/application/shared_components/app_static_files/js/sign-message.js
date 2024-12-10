/*
 * JavaScript client-side example using jsrsasign
 */
 
// #########################################################
// #             WARNING   WARNING   WARNING               #
// #########################################################
// #                                                       #
// # This file is intended for demonstration purposes      #
// # only.                                                 #
// #                                                       #
// # It is the SOLE responsibility of YOU, the programmer  #
// # to prevent against unauthorized access to any signing #
// # functions.                                            #
// #                                                       #
// # Organizations that do not protect against un-         #
// # authorized signing will be black-listed to prevent    #
// # software piracy.                                      #
// #                                                       #
// # -QZ Industries, LLC                                   #
// #                                                       #
// #########################################################

/**
 * Depends:
 *     - jsrsasign-latest-all-min.js
 *     - qz-tray.js
 *
 * Steps:
 *
 *     1. Include jsrsasign 10.9.0 into your web page
 *        <script src="https://cdnjs.cloudflare.com/ajax/libs/jsrsasign/11.1.0/jsrsasign-all-min.js"></script>
 *
 *     2. Update the privateKey below with contents from private-key.pem
 *
 *     3. Include this script into your web page
 *        <script src="path/to/sign-message.js"></script>
 *
 *     4. Remove or comment out any other references to "setSignaturePromise"
 *
 *     5. IMPORTANT: Before deploying to production, copy "jsrsasign-all-min.js"
 *        to the web server.  Don't trust the CDN above to be available.
 */
var privateKey = "-----BEGIN PRIVATE KEY-----\n" +
"MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC1ZMIZiVF5cBmw\n" +
"gUAhzr6M2P8d42diXYG6D6XWZdhU4LVskQhMLTTnyTQcYnltfEPnCeiIwLpKVBA8\n" +
"jk6FSOAbxJeW5BesI2h8nfnSam74f1Y2SkABFPbQcINKpZ75wiEmjhZl/GDsaetu\n" +
"H99a5AowskPk2tT/D/ub0jLQ7Nl/km1/M9ge1SpC5kYLsCTboGvZUyLBV1KRne8c\n" +
"2XgwtwK8sCbAO3YQVhfxG9vVYlVIBprqEBwsVQ6ZH3fFRFVJmB+YjbHc3Piy3sML\n" +
"o/uVO3AkrTfMN67PjOGn8BkikvP3XUsFTCw5v6xuvQuMIBp4GH7/ytbO2nO8Ylew\n" +
"wXs9yD11AgMBAAECggEAU0ZhkaWoAM9FC/IahirK8hCA9rC6er8g2lFqugXhjf3n\n" +
"bGMc4xPx8OM/CDTxOCFPbxbuaTHJlGwJVDOkuq3dLQJQ8ZXfhEhxJJzF3yK7tVuI\n" +
"Mb5eqeB8+u5cZ/2nAVRtMa0TfVijCoYJ7nG1cZ21S+vbHYqVNE+bHEsgxyelJlpF\n" +
"0DiVoF/H7dUddWABdx+OBVAv95bVKjmNg5ZHu1Rh0DvLiiRVY+q9b/C2oCfprf48\n" +
"urwgdBKSlWREC1+0kaP0p1yWvULavHFafCu11/AUC9F6vRrkfNSwEpmqjLt3Zh1N\n" +
"plxuYwYg6tkOd8AqW1pcMFL0yEQceggr38W9gIsGNQKBgQDiPUGge5q7MfUwCDKU\n" +
"qPy4ODEcw5PFIOCpXuonLgITp2JHxVtjEK/G7sgoGkDcSh7RWMZuQ4bbAmuKb6V+\n" +
"vgCQObrA5uk1Go/CUfZStukRnzyYfpFy9OKqKDb9cMlKbAbUpanqtk8UPnoy/hs4\n" +
"o45vXpTfZM3xiGUNTMtN6Nk5jwKBgQDNQUvOaVCa1oeImqSRfXKJlKypPYMvxKDs\n" +
"flE9aPIirtikAcs9kLifwmrKLYz0lLR/4f5gSICLwXXLDDFf6iTv+ZpZbD42/s/I\n" +
"MHdQkY6rk5gHlsahNi67QMc7NQid4ep2yOtUlgKEursyvVsZdsSNsC0iMaMqQ89c\n" +
"lRxlSESuuwKBgCTLt7fFQrY9etZUDv30uh2wLfSyrn76SO/jGwxCRF4z9B0eMS3c\n" +
"keo1/eHf2zq452g/Gw7l9rH6I8mBPRZvCqJqcUBcjgNwDX+aWwi67Q9LqcxXkYpz\n" +
"38WzAraXuHVdOoMtaoRdIGF3g+J1R7Ifj9P3OxlWSNSGzYCrQ8mpHGNrAoGBAMPj\n" +
"N0fNNsIvT7ZNcBXyFWe8XnQ+Yn8qNzK88yeaiswS9mq/04n0Hl9KGsTNaCLb8M/D\n" +
"jROy3guDHLol7tFNEud73ZTOOyodUYwKxTQ9Vl3lREip2vNsVHkdP4b//DNBspSe\n" +
"+AkICWtHEvU/xjutH7ThmJFzsfbaNIJ1RF5c9D+VAoGAeUnwC3Kery7Ne4AEX1sk\n" +
"T21vSkosdQkvprsF6Z2WupGx7JP9NiAPBkWKjLjySoV1HQvKsyAVc0+0+RoMcB/4\n" +
"r1tVYaxhMVf9LoJ4GH9P7CtNlMJ5yhHQY988qUkyoXFzGn6IbACICL5Sojn4ub2e\n" +
"GTXn3ufRGo0QYFgVpZM/r2E=\n" +
"-----END PRIVATE KEY-----";

qz.security.setSignatureAlgorithm("SHA512"); // Since 2.1
qz.security.setSignaturePromise(function(toSign) {
    return function(resolve, reject) {
        try {
            console.log(`toSign:`);
            console.log(toSign);
            var pk = KEYUTIL.getKey(privateKey);
            var sig = new KJUR.crypto.Signature({"alg": "SHA512withRSA"});  // Use "SHA1withRSA" for QZ Tray 2.0 and older
            sig.init(pk); 
            sig.updateString(toSign);
            var hex = sig.sign();
            // console.log("DEBUG: \n\n" + stob64(hextorstr(hex)));
            resolve(stob64(hextorstr(hex)));
        } catch (err) {
            console.error(err);
            reject(err);
        }
    };
});
