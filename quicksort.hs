quicksort [] = []
quicksort (x:xs) = quicksort [ y | y <- xs, y < x ]
                ++ [x]
                ++ quicksort [ y | y <- xs, y >= x ]


main = print(quicksort [1,5,9,7,4,3,0,8,7,6,3,4,998,3,4,554,43])

