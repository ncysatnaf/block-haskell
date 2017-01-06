import System.Process
import System.Directory

main = do
  path <- findExecutable "ls"
  case path of
    Nothing -> error "ls doesn't exist"
    Just _ -> createProcess (proc "ls" ["-a", "-l", "-h"])

-- total 184
-- drwxr-xr-x  25 vai  staff   850B Jan  6 20:55 .
-- drwxr-xr-x   7 vai  staff   238B Jan  6 18:53 ..
-- -rw-r--r--   1 vai  staff   714B Jan  6 19:53 array.hs