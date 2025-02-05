```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  let sortedNumbers = sort numbers
  print sortedNumbers
```