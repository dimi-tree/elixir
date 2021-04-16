defmodule SortTR do
    def descending([]), do: []
    def descending([a]), do: [a]
    def descending(list) do
        half_size = div(Enum.count(list), 2)
        {list_a, list_b} = Enum.split(list, half_size)
        merge(
            descending(list_a),
            descending(list_b),
            [])
    end

    defp merge([], list_b, merged), do: merged ++ list_b
    defp merge(list_a, [], merged), do: merged ++ list_a

    defp merge([head_a | tail_a], list_b = [head_b | _], merged)
        when head_a >= head_b do
        merge(tail_a, list_b, merged ++ [head_a])
    end
    defp merge(list_a=[head_a | _], [head_b | tail_b], merged)
        when head_a < head_b do
        merge(list_a, tail_b, merged ++ [head_b])
    end
end
