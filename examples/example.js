//This function initializes the library
exports.initialize = function (wha) {
    //This line does something nifty
    console.log("initialized " + wha);
};

//<div class="alert alert-warning">This is super complex - watch out for it!</div>
exports.coolprop = "hi";

//This function kills a process
//@param pid {Number} is the process id
//@return {void} nothing
exports.kill = function (pid) {
    console.log("killed " + pid);
};

//Does nothing but looks neat
exports.whatever = "fool";