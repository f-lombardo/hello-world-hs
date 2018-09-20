module HelloWorldSpec where

import Test.Hspec        (Spec, it, shouldBe, describe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import HelloWorld (hello)


spec :: Spec
spec = do
    describe "function hello" $ do
      it "should say hello" $ do
        hello `shouldBe` "Hello, World!"