# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

defmodule ProjectEuler.Problem005 do
    def lcm() do
        Enum.reduce(1..20, 1, &lcm/2)
    end

    defp lcm(a, b) do
        round((a * b) / gcd(a, b))
    end

    defp gcd(a, 0), do: a

    defp gcd(a, b) do
        gcd(b, round(rem(a, b)))
    end
end

IO.inspect ProjectEuler.Problem005.lcm()