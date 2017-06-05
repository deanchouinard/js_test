// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
import GNum from "./ajax.js"
let lnButton = document.getElementById("load-num");
if (lnButton) {
  lnButton.addEventListener("click", e => {
    GNum.loadNum()
  })
}

import GData from "./j_ajax.js"
let ldButton = document.getElementById("get-data");
if (ldButton) {
  ldButton.addEventListener("click", e => {
    console.log("event");
    GData.loadData("view", "show-data")
  })
}

import Hello from "./hello.js"

Hello.sayHello("app");

export const App = {
  hello: function() { Hello.sayHello("index3")}
}

let jtest = document.getElementById("js-test")
if(jtest) {
  console.log("jtest found");
  jtest.innerHTML = "<h3>jtest</h3>";
}

// var $ = require('jquery')
import $ from "jquery"
import "jquery"

// global.jQuery = require("jquery")
global.bootstrap = require("bootstrap")

console.log('using jquery', $('body'));

// import "bootstrap.js"
// import "./bootstrap"
$.fn.tooltip.Constructor.VERSION

