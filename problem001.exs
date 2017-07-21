# Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000

# 233168

defmodule ProjectEuler.Problem001 do
    def compute_sum(limit) do
        1..(limit-1)
        |> Enum.filter(&(rem(&1, 3) == 0 || rem(&1, 5) == 0))
        |> Enum.reduce(0, &(&1 + &2))
    end
end

IO.inspect ProjectEuler.Problem001.compute_sum(1000)