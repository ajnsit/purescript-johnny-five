module JohnnyFive.Board.FFI where

import Prelude
import Effect (Effect)

-- foreign import data Board :: Type

-- | Run a callback when the attached board becomes ready
foreign import onBoardReady :: (Unit -> Effect Unit) -> Effect Unit
