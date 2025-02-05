# Haskell Sort Performance Issue

This repository demonstrates a performance issue encountered when using Haskell's built-in `sort` function from `Data.List` with extremely large lists containing numerous elements of similar values. While `sort` typically offers efficient merge sort-based sorting, its performance can suffer in edge cases involving such data.

The `bug.hs` file contains a simple program demonstrating the problem.  For smaller lists, execution is quick. However, increasing the list size and narrowing the value range will result in a noticeable performance slowdown. In extreme cases, stack overflow can occur.

The `bugSolution.hs` file illustrates a possible improvement using a different sorting algorithm optimized for almost-sorted lists or lists with a limited value range.