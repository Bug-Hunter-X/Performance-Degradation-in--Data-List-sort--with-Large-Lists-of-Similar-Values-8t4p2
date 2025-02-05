```haskell
import Data.List (sort)
import Data.Ord (comparing)
import Data.Maybe (fromMaybe)

-- Optimized sorting for near-sorted lists or lists with limited value ranges
optimizedSort :: (Ord a) => [a] -> [a] 
optimizedSort xs = insertionSort xs
  where
    insertionSort [] = []
    insertionSort (x:xs) = insert x (insertionSort xs)

    insert x [] = [x]
    insert x (y:ys) | x <= y = x:y:ys
                    | otherwise = y:insert x ys

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  let sortedNumbers = optimizedSort numbers
  print sortedNumbers

  -- Example with a large near-sorted list. Replace with a larger list to test further
  let largeList = [1..1000000] ++ [1000001,1000002] 
  let sortedLargeList = optimizedSort largeList
  print (take 10 sortedLargeList) --Print first 10 elements for demonstration. Avoid full printing for large lists
```