# Special Pythagorean triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 3pow(2) + 4pow(2) = 9 + 16 = 25 = 5pow(2).
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# 31875000

defmodule ProjectEuler.Problem009 do

    # Brute Force solution:
    # Let's generate all the possible {a, b, c} combinations
    # such that a < b < c and a + b + c = 1000
    # and check for a2 + b2 == c2
    def pythagorean_triplet(n) do
        result = for a <- 1..n,
                     b <- a+1..n,
                     c = n - a - b,
                     a*a + b*b == c*c, do: a*b*c
        Enum.at(result, 0)
    end
end

IO.inspect ProjectEuler.Problem009.pythagorean_triplet(1000)