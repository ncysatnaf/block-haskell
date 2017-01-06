main = do
  if 7 `mod` 2 == 0
    then putStrLn "7 is even"
    else putStrLn "7 is odd"
  
  if 8 `mod` 4 == 0
    then putStrLn "8 is divisible by 4"
    else return()
  
  let num = 9
  putStrLn $
    if num < 0
      then show num ++ " is negative"
      else if num < 10
        then show num ++ " has i digit"
        else show num ++ " has multiple digit"

-- 7 is odd
-- 8 is divisible by 4
-- 9 has i digit
