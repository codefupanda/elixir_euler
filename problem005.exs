# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 232792560

defmodule ProjectEuler.Problem005 do

    # Mathematically, smallest positive integer that is divisible by two numbers a and b 
    # is called Lowest Common Multiple (LCM)
    # To compute LCM:
    # LCM(x, y) = x * y / GCD(x, y)
    # LCM is an associative property, that means
    # LCM(a, b, c...z) = LCM(LCM(LCM(a, b), ...), z)
    # Refer - https://en.wikipedia.org/wiki/Least_common_multiple for details
    def lcm() do
        Enum.reduce(1..20, 1, &lcm/2)
    end

    defp lcm(a, b) do
        round((a * b) / gcd(a, b))
    end

    # NOTE: Integer.gcd(a, b) can be used instead.
    defp gcd(a, 0), do: a
    defp gcd(0, b), do: b
    defp gcd(a, b) do
        gcd(b, round(rem(a, b)))
    end
end

IO.inspect ProjectEuler.Problem005.lcm()