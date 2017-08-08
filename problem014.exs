# Longest Collatz sequence

# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

# 837799

defmodule ProjectEuler.Problem013 do
    def long_collatz_sequence(n) do
        1..n
        |> Enum.map(&ProjectEuler.Problem013.count_collatz_terms/1)
        |> Enum.sort(fn {_, count1}, {_, count2} -> count1 > count2 end)
        |> Enum.at(0)
        |> elem(0)
    end

    def count_collatz_terms(n) do
        count_collatz_terms(n, n, 1)
    end
    def count_collatz_terms(number, n, count) when n == 1, do: {number, count}
    def count_collatz_terms(number, n, count) when rem(n, 2) == 0 do
        count_collatz_terms(number, div(n, 2), count + 1)
    end
    def count_collatz_terms(number, n, count) do
        count_collatz_terms(number, 3 * n + 1, count + 1)
    end
end

IO.inspect ProjectEuler.Problem013.long_collatz_sequence(1_000_000)