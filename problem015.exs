# Lattice paths

# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

# 137846528820

defmodule ProjectEuler.Problem015 do

    # Refer https://blog.dreamshire.com/project-euler-15-solution/
    def solve(n) do
        factorial(2 * n)
        |> div(factorial(n))
        |> div(factorial(n))
    end

    def factorial(n) do
        1..n |> Enum.reduce(&(&1 * &2))
    end
end

IO.inspect ProjectEuler.Problem015.solve(20)