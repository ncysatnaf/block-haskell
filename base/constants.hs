s :: String
s = "constant"

main = do
  putStrLn s

  let n = 5000000
  let d = 3e20 / n

  print d 
  print $ sin n


-- constant
-- 6.0e13
-- -0.9765424686570829
