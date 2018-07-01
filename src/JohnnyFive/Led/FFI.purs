module JohnnyFive.Led.FFI where

import Prelude

import Effect (Effect)

------------------------------------------------------------------

foreign import data Led :: Type

-- | Create a new Led
-- | param: int pin number
foreign import mkLed :: Int -> Effect Led

------------------------------------------------------------------

-- | Turn the LED on
foreign import on :: Led -> Effect Unit

-- | Turn the LED off
foreign import off :: Led -> Effect Unit

-- | Toggle the LED
-- | return: new state of the Led
foreign import toggle :: Led -> Effect Boolean

-- | Is the LED on?
foreign import isOn :: Led -> Effect Boolean

-- | Set the LED brightness
-- | param: int Analog brightness value 0-255
foreign import setBrightness :: Int -> Led -> Effect Unit

-- | Set the LED intensity
-- | This also sets the LED brightness
-- | param: int intensity value 0-100
foreign import setIntensity :: Int -> Led -> Effect Unit

------------------------------------------------------------------
-- LED Effects

-- | Blink.
-- | param: duration Time in ms on, time in ms off
foreign import blink :: Int -> Led -> Effect Unit

-- | Fade the Led in and out
-- | param: int Analog brightness value 0-255
-- | param: int Time in ms that a fade in/out will elapse
foreign import fade :: Int -> Int -> Led -> Effect Unit

-- | Fade the Led in and out in a loop with specified time
-- | param: int Time in ms that a fade in/out will elapse
foreign import pulse :: Int -> Led -> Effect Unit

-- | Stop all effects
foreign import stop :: Led -> Effect Unit
