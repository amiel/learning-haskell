
-- this has some serious flaws, but I'm trying


split1 :: (Char, String) -> String
split1 (c, "") = ""
split1 (c, (x:xs)) = if x == c then "" else [x] ++ split1(c, xs)


split2 :: (Char, String) -> String
split2 (c, "") = ""
split2 (c, (x:xs)) = if x == c then xs else split2(c, xs)

split :: (Char, String) -> [String]
split (c, "") = []
split (c, xs) = [split1(c, xs)] ++ split(c, split2(c, xs))

main = print(split(',', "foo, bar, baz"))