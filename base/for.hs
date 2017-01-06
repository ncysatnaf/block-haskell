import Control.Monad.Cont

main = do
  forM_ [1..3] $ \i -> do
    print i
  
  forM_ [7..9] $ \j -> do
    print j

  withBreak $ \break ->
    forM_ [1..] $ \_ -> do
    p "loop"
    break()
  
  where
  withBreak = (`runContT` return) . callCC
  p = liftIO . putStrLn

-- 1
-- 2
-- 3
-- 7
-- 8
-- 9
-- loop
