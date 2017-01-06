import Control.Monad
import Control.Concurrent

f :: String -> IO ()
f from = forM_ [0..2] (\i -> putStrLn $ from ++ ":" ++ show i)

main = do
  f "direct"
  forkIO $ f "forkIO"
  forkIO $ (\msg -> putStrLn msg) "going"

  getLine
  putStrLn "done"


-- direct:0
-- direct:1
-- direct:2
-- forkIO:0
-- forkIO:1
-- forkIO:2
-- going

-- done