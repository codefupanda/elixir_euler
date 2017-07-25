# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# 6857

defmodule ProjectEuler.Problem003 do

    def primeFactor(n), do: primeFactorHelper(n, next_prime(n))

    def primeFactorHelper(n, min_prime) when min_prime < n do
        n = div(n, min_prime)
        primeFactorHelper(n, next_prime(n))
    end

    def primeFactorHelper(n, _min_prime), do: n

    def next_prime(n) do
        Enum.find(2..round(:math.sqrt(n)), n, &(rem(n, &1) == 0))
    end
end

IO.inspect ProjectEuler.Problem003.primeFactor(600851475143)