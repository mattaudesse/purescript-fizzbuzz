module Main
    ( fizzbuzz
    , main
    ) where

import Prelude
import Data.Array                ((..))
import Data.Int                  (toNumber)
import Data.Foldable             (intercalate)
import Control.Monad.Eff         (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Math                      ((%))


fizzbuzz :: Int -> String
fizzbuzz u =
    let transform i | toNumber i % 15.0 == 0.0 = "FizzBuzz"
                    | toNumber i %  5.0 == 0.0 = "Buzz"
                    | toNumber i %  3.0 == 0.0 = "Fizz"
                    | otherwise   = show i
     in intercalate "\n" (transform <$> 1..u)


main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ fizzbuzz 100
