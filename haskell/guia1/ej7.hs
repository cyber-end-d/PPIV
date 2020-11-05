import Data.List

separarXs s (x:xs) = x ++ [s] ++ (separarXs s xs)
separarXs _ [x] = x
separarXs _ [] = []