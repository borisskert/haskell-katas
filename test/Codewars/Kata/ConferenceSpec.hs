module Codewars.Kata.ConferenceSpec where

import Codewars.Kata.Conference (conferencePicker)
-- import Codewars.Kata.Conference.Types 
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "conferencePicker" $ do
    context "static tests" $ do
      it "works if there is one unvisited city" $ do
        conferencePicker ["Mexico City","Johannesburg","Stockholm","Osaka","Saint Petersburg","London"] ["Stockholm","Paris","Melbourne"] `shouldBe` Just "Paris"
      
      it "returns Nothing if all cities have been visited" $ do  
        conferencePicker ["Berlin", "Paris"] ["Paris", "Berlin"] `shouldBe` Nothing
        
    -- context "random tests" $ do
    --   it "returns the first city if none was visited yet" $ property $ \(Cities xs) ->
    --     conferencePicker [] xs `shouldBe` Just (head xs)
      
    --   it "returns Nothing if all cities have been visited" $ property $ \(Cities xs) ->
    --     conferencePicker xs xs `shouldBe` Nothing
      
    --   it "returns a city that's available, if it returns any city at all" $ property $ \(Cities xs) (Cities ys) ->    
    --     conferencePicker xs ys `shouldSatisfy` maybe True (`elem` ys)
    
    -- For those interested: Cities = [String], but generates "nice" city names and ensures there is at least one city
