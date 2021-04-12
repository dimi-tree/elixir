defmodule MyList do
    def max([]), do: nil
    def max([a]), do: a 
    def max([a, b | tail]) when a >= b, do: max([a | tail])
    def max([a, b | tail]) when a < b, do: max([b | tail])

    def min([]), do: nil
    def min([a]), do: a 
    def min([a, b | tail]) when a < b, do: min([a | tail])
    def min([a, b | tail]) when a >= b, do: min([b | tail])
end
