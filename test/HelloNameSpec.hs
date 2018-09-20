{-# LANGUAGE RecordWildCards #-}

module HelloNameSpec where

import Data.Foldable     (for_)
import Test.Hspec        (Spec, describe, it, shouldBe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import HelloName (helloName)

spec :: Spec
spec = describe "function helloName" $ for_ cases test
  where

    test Case{..} = it explanation assertion
      where
        explanation = unwords [show input, "-", description]
        assertion   = helloName input `shouldBe` expected

data Case = Case { description :: String
                 , input       :: String
                 , expected    :: String
                 }

cases :: [Case]
cases = [ Case { description = "Greetings for Goofy"
               , input       = "Goofy"
               , expected    = "Hello Goofy!"
               }
        , Case { description = "Greetings for Donald"
               , input       = "Donald"
               , expected    = "Hello Donald!"
               }
        ]
