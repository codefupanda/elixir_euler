# Power digit sum

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2(1000)?

# 1366

defmodule ProjectEuler.Problem016 do

    # Raise the power to number,
    # split the number into digits
    # and sum them
    def power_digit_sum(n, power) do
        :math.pow(n, power)
        |> round
        |> Integer.digits
        |> Enum.sum
    end
end

IO.inspect ProjectEuler.Problem016.power_digit_sum(2, 1000)