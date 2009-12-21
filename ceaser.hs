-- ceaser but without modulo
ceaser :: Int -> String -> String
ceaser i [] = []
ceaser i (x:xs) = [toEnum(fromEnum x + i)] ++ ceaser i xs


main = print(ceaser 1 "abc")

