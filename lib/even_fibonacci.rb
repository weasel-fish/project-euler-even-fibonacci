# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    fib_arr = [2]
    first = 1
    second = 2
    while second + first < limit
        temp = first + second
        first = second
        second = temp
        fib_arr << second unless second % 2 != 0
    end
    fib_arr.inject(0, :+)
end