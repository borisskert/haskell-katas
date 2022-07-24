module BrainfuckSpec where

import Brainfuck (Instruction (..), brainfuck, compile)
import Data.Char
import Test.Hspec
import Prelude hiding (Left, Right)

spec :: Spec
spec = do
  describe "Your Brainfuck interpreter" $ do
    it "should work for a few simple examples" $ do
      brainfuck ",+[-.,+]" ("Codewars" ++ [chr 255]) `shouldBe` "Codewars"
      brainfuck ",[.[-],]" ("Codewars" ++ [chr 0]) `shouldBe` "Codewars"
      brainfuck ",>,<[>[->+>+<<]>>[-<<+>>]<<<-]>>." [chr 8, chr 9] `shouldBe` [chr 72]

  describe "SLR" $ do
    it "should compile" $ do
      compile ",+[-.,+]" `shouldBe` [Block [Operation ',', Operation '+', Loop [Operation '-', Operation '.', Operation ',', Operation '+']]]
      compile ",[.[-],]" `shouldBe` [Block [Operation ',', Loop [Operation '.', Loop [Operation '-'], Operation ',']]]
      compile ",>,<[>[->+>+<<]>>[-<<+>>]<<<-]>>."
        `shouldBe` [ Block
                       [ Operation ',',
                         Operation '>',
                         Operation ',',
                         Operation '<',
                         Loop
                           [ Operation '>',
                             Loop
                               [ Operation '-',
                                 Operation '>',
                                 Operation '+',
                                 Operation '>',
                                 Operation '+',
                                 Operation '<',
                                 Operation '<'
                               ],
                             Operation '>',
                             Operation '>',
                             Loop
                               [ Operation '-',
                                 Operation '<',
                                 Operation '<',
                                 Operation '+',
                                 Operation '>',
                                 Operation '>'
                               ],
                             Operation '<',
                             Operation '<',
                             Operation '<',
                             Operation '-'
                           ],
                         Operation '>',
                         Operation '>',
                         Operation '.'
                       ]
                   ]
