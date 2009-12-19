
-- a faster fibonacci
-- but I'm obviously missing lambdas

fibo :: (Int, Int, Int) -> Int
fibo (0, a, b) = a
fibo (n, a, b) = fibo (n-1, a+b, a)

fib :: Int -> Int
fib n = fibo (n, 1, 0)

main = print(fib(10))
