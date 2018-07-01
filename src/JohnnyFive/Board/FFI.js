"use strict";

var five = require("johnny-five");
var board = five.Board();

// exports.board = board;

exports.onBoardReady = function (f) {
  return function() {
    board.onReady(f);
  };
};
