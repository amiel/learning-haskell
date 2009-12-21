
ceaser :: Int -> String -> String
ceaser i [] = []
ceaser i (x:xs) = toEnum(((fromEnum x + i - fromEnum('a')) `mod` 26) + fromEnum('a')) : ceaser i xs


main = print(ceaser 4 "abcyz")

