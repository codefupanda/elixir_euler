# Sum square difference

# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# 25164150

defmodule ProjectEuler.Problem006 do
    def solve(n) do
        abs(sum_of_squares(n) - square_of_sum(n))
    end

    def sum_of_squares(n) do
        sum_of_squares_helper(n, 0)
    end
    # sum the squares till number is greater than 0
    def sum_of_squares_helper(n, sum) when n <= 0, do: sum
    def sum_of_squares_helper(n, sum) do
        sum_of_squares_helper(n - 1, sum + (n * n))
    end

    def square_of_sum(n) do
        sum = Enum.sum(1..n)
        sum * sum
    end
end

IO.inspect ProjectEuler.Problem006.solve(100)