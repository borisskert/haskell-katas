module SimpleAssemblerSpec where

import Data.Map.Strict as M
import SimpleAssembler
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Sample tests" $ do
    it "works with sample1" $ do
      ["mov a 5", "inc a", "dec a", "dec a", "jnz a -1", "inc a"] ===> [("a", 1)]

    it "works with sample2" $ do
      ["mov a -10", "mov b a", "inc a", "dec b", "jnz a -2"] ===> [("a", 0), ("b", (-20))]

    it "works with sample3" $ do
      ["mov hello 1", "dec hello"] ===> [("hello", 0)]

    it "works with sample4" $ do
      ["mov c 12", "mov b 0", "mov a 200", "dec a", "inc b", "jnz a -2", "dec c", "mov a b", "jnz c -5", "jnz 0 1", "mov c a"] ===> [("a", 409600), ("b", 409600), ("c", 409600)]

    it "works with sample5" $ do
      ["mov x 10", "dec x", "jnz x -1"] ===> [("x", 0)]

    it "works with sample6" $ do
      ["mov x 0", "jnz x 10"] ===> [("x", 0)]

    -- ["mov hello 0"]
    -- ["mov x 0","jnz x 10"]
    -- ["mov x 10","dec x","jnz x -1"]
    -- ["mov x 0","jnz x 2","mov y 1","mov z 1"]
    -- ["mov x 0","jnz x 3","mov y 1","jnz 1 2","mov z 1"]
    -- ["mov x 1","mov y 2","inc x","inc x","dec y","jnz y -2"]
    -- ["mov a 5","inc a","dec a","dec a","jnz a -1","inc a"]

    it "works with sample7" $ do
      ["mov hello 0"] ===> [("hello", 0)]

    it "works with sample8" $ do
      ["mov x 0", "jnz x 10"] ===> [("x", 0)]

    it "works with sample9" $ do
      ["mov x 10", "dec x", "jnz x -1"] ===> [("x", 0)]

    it "works with sample9a" $ do
      ["mov x 10", "dec x", "jnz -1 x"] ===> [("x", 9)]

    it "works with sample9b" $ do
      ["mov x 10", "dec x", "jnz 0 -1"] ===> [("x", 9)]

    it "works with sample9c" $ do
      ["mov x 1", "dec x", "jnz x x"] ===> [("x", 0)]

    it "works with sample10" $ do
      ["mov x 0", "jnz x 2", "mov y 1", "mov z 1"] ===> [("x", 0), ("y", 1), ("z", 1)]

    it "works with sample11" $ do
      ["mov x 0", "jnz x 3", "mov y 1", "jnz 1 2", "mov z 1"] ===> [("x", 0), ("y", 1)]

    it "works with sample12" $ do
      ["mov x 1", "mov y 2", "inc x", "inc x", "dec y", "jnz y -2"] ===> [("x", 4), ("y", 0)]

    it "works with sample13" $ do
      ["mov a 5", "inc a", "dec a", "dec a", "jnz a -1", "inc a"] ===> [("a", 1)]

prog ===> regs = (simpleAssembler prog) `shouldBe` (M.fromList regs)
