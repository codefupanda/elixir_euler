# Number letter counts

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. 
# For example, 
# 342 (three hundred and forty-two) contains 23 letters 
# and 115 (one hundred and fifteen) contains 20 letters.
# The use of "and" when writing out numbers is in compliance with British usage.

defmodule ProjectEuler.Problem017 do
    def count_chars_till(n) do
        1..n
        |> Enum.map(&ProjectEuler.Problem017.count/1)
        |> Enum.sum
    end

    def count(n) do
        n
        |> ProjectEuler.Problem017.format_string()
        |> String.length()
    end

    def format_string(0), do: ""
    def format_string(1), do: "one"
    def format_string(2), do: "two"
    def format_string(3), do: "three"
    def format_string(4), do: "four"
    def format_string(5), do: "five"
    def format_string(6), do: "six"
    def format_string(7), do: "seven"
    def format_string(8), do: "eight"
    def format_string(9), do: "nine"
    def format_string(10), do: "ten"
    def format_string(11), do: "eleven"
    def format_string(12), do: "twelve"
    def format_string(13), do: "thirteen"
    def format_string(14), do: "fourteen"
    def format_string(15), do: "fifteen"
    def format_string(16), do: "sixteen"
    def format_string(17), do: "seventeen"
    def format_string(18), do: "eighteen"
    def format_string(19), do: "nineteen"
    def format_string(20), do: "twenty"
    def format_string(30), do: "thirty"
    def format_string(40), do: "forty"
    def format_string(50), do: "fifty"
    def format_string(60), do: "sixty"
    def format_string(70), do: "seventy"
    def format_string(80), do: "eighty"
    def format_string(90), do: "ninety"
    def format_string(n) when div(n, 1000) > 0 do
        format_string(div(n, 1000)) <> "thousand" <> format_string(rem(n, 1000))
    end
    def format_string(n) when div(n, 100) > 0 and rem(n, 100) == 0 do
        format_string(div(n, 100)) <> "hundred"
    end
    def format_string(n) when div(n, 100) > 0 do
        format_string(div(n, 100)) <> "hundredand" <> format_string(rem(n, 100))
    end
    def format_string(n) when div(n, 10) > 0 do
        format_string(div(n, 10) * 10) <> format_string(rem(n, 10))
    end
    # Add cases for 10_000, 100_000 etc
end

IO.inspect ProjectEuler.Problem017.count_chars_till(1000)