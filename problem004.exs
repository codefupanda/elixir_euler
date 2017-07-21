# Largest palindrome product

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 906609

defmodule ProjectEuler.Problem004 do
    def largest_palindrome() do
        palindromes = for a <- 999..100,
            b <- 999..100,
            palindrome?(a * b) do
                a * b
        end
        palindromes = Enum.sort(palindromes, &(&1 >= &2))
        Enum.take(palindromes, 1)
    end

    defp palindrome?(n) do
        string = to_string(n)
        string == String.reverse(string)
    end
end

IO.inspect ProjectEuler.Problem004.largest_palindrome()