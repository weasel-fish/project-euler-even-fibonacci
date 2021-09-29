# Implement your object-oriented solution here!
class EvenFibonacci
    attr_accessor :limit, :members

    def initialize(limit)
        @limit = limit
        @members = gather_members
    end

    def gather_members
        fib_arr = [2]
        first = 1
        second = 2
        while second + first < limit
            temp = first + second
            first = second
            second = temp
            fib_arr << second unless second % 2 != 0
        end

        fib_arr
    end

    def sum
        members.inject(0, :+)
    end

end