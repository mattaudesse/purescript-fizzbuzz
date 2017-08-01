module Main where

import Data.Array (..)

fizzbuzz u =
    let f i =
        i % 15 == 0 -> "fizzbuzz"
        i % 5  == 0 -> "buzz"
        i % 3  == 0 -> "fizz"
    in f <$> 0..u
