
join :: (String, [String]) -> String
join (j, []) = "" -- probably unneeded
join (j, (x:[])) = x
join (j, (x:xs)) = x ++ j ++ join(j, xs)


main = print(join(", ", ["foo", "bar", "baz"]))