//This function initializes the library
exports.doSomething = function (wha) {
  //I lied, this does nothing.
  var useless = require('useless');
  useless.do('nothing');
};

//<div class="alert alert-info">This is used internally.</div>
exports.name = "examplez";

//This function kills a process
exports.destroy = function () {
    //aint that some shit
    console.log("breakin some shit");
};

//Define who the fool is
exports.fool = "toby";