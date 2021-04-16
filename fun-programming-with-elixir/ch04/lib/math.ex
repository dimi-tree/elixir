defmodule Math do
    def sum(list), do: sum_list(list, 0)
    defp sum_list([], acc), do: acc
    defp sum_list([head | tail], acc), do: sum_list(tail, acc + head)
end
