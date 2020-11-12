exports.propChecker = function(prop) {
    if (prop === null) {
        console.log(prop + " is null");
    } else if (prop === undefined) {
        console.log(prop + " is undefined");
    } else {
        console.log(prop + " is " + typeof (prop));
    }
}
