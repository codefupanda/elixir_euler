# 10001st prime

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# 104743

defmodule ProjectEuler.Problem006 do

    # Sieve of Eratosthenes is efficient algorithm to find out primes
    # But we do not know the range for Nth prime
    # The approach taken here is a good example of infinte streams in Elixir
    # We create an infinte stream of numbers and iterate through
    # the stream checking for primes till we hit the Nth prime
    def nth_prime(n) do
        Stream.iterate(0, &(&1+1))
        |> Stream.filter(&ProjectEuler.Problem006.prime?/1)
        |> Enum.take(n + 1)
        |> Enum.at(n)
    end

    # is prime
    def prime?(n) do
        prime = Enum.find(2..round(:math.sqrt(n)), n, &(rem(n, &1) == 0))
        prime == n
    end
end

IO.inspect ProjectEuler.Problem006.nth_prime(10001)
