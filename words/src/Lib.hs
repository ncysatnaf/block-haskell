module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    , findWord
    , findWorldInLine
    ) where

import Data.List(isInfixOf)

type Grid = [String]

outputGrid :: Grid -> IO ()
outputGrid grid = putStrLn (formatGrid grid)

formatGrid :: Grid -> String
formatGrid = unlines

findWord :: Grid -> String -> Bool
findWord = undefined

findWorldInLine : String -> String -> Bool
findWorldInLine word line = isInfixOf word line
