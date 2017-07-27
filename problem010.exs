# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# 142913828922

defmodule ProjectEuler.Problem010 do

    # Brute force implementation.
    # Loop through 2 to limit and check for prime, sum if so
    # TODO: Rewrite with sieve of Eratosthenes
    def compute_sum(limit) do
        2..(limit-1)
        |> Stream.filter(&ProjectEuler.Problem010.prime?/1)
        |> Enum.reduce(0, &(&1 + &2))
    end

    # is prime
    def prime?(n) do
        prime = Enum.find(2..round(:math.sqrt(n)), n, &(rem(n, &1) == 0))
        prime == n
    end
end

IO.inspect ProjectEuler.Problem010.compute_sum(2_000_000)