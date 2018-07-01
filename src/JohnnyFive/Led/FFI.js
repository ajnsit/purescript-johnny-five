"use strict";

var five = require("johnny-five");

exports.mkLed = function (pin) {
  return function() {
    return new five.Led(pin);
  };
};

exports.on = function(led) {
  return function() {
    led.on();
  }
}

exports.off = function(led) {
  return function() {
    led.off();
  }
}

exports.toggle = function(led) {
  return function() {
    var isOn = led.isOn;
    led.toggle();
    return !isOn;
  }
}

exports.isOn = function(led) {
  return function() {
    return led.isOn;
  }
}

exports.setBrightness = function(val) {
  return function(led) {
    return function() {
      led.brightness(val);
    }
  }
}

exports.setIntensity = function(val) {
  return function(led) {
    return function() {
      led.intensity(val);
    }
  }
}

exports.blink = function(val) {
  return function(led) {
    return function() {
      led.blink(val);
    }
  }
}

exports.fade = function(val) {
  return function(time) {
    return function(led) {
      return function() {
        led.fade(val, time);
      }
    }
  }
}

exports.pulse = function(val) {
  return function(led) {
    return function() {
      led.pulse(val);
    }
  }
}

exports.stop = function(led) {
  return function() {
    led.stop();
  }
}
