import Data.IORef

intSeq :: IORef Int -> IO Int
intSeq ref = do
  modifyIORef ref (+1)
  readIORef ref

main = do
  ref <- newIORef 0
  let nextInt = intSeq ref

  print =<< nextInt
  print =<< nextInt
  print =<< nextInt

  ref' <- newIORef 0
  let newInts = intSeq ref'
  print =<< newInts

-- 1
-- 2
-- 3
-- 1