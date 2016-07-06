{-# LANGUAGE OverloadedStrings #-}
module Main where

import Network.Wai
import Network.HTTP.Types (status200)
import qualified Network.Wai.Handler.Warp as Warp

main :: IO ()
main = do
  putStrLn "Started on 8010"
  Warp.run 8010 app

app :: Application
app req respond = do
    (putStrLn $ "Request: " ++ (show req))
    (respond $ responseLBS status200 [] "Hello World")
