
findPos :: (Char, String) -> Int
findPos (c, "") = 0
findPos (c, (x:xs)) = if x == c then 0 else 1 + findPos(c, xs)

split :: (Char, String) -> [String]
split (c, "") = []
split (c, xs) = [take pos xs] ++ split(c, drop(pos + 1) xs) where pos = findPos(c, xs)

main = print(split('|', "foo|bar|baz"))