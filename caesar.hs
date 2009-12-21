
caesar :: Int -> String -> String
caesar i [] = []
caesar i (x:xs) = toEnum(((fromEnum x + i - fromEnum('a')) `mod` 26) + fromEnum('a')) : caesar i xs


main = print(caesar 4 "abcyz")

