defmodule BreadthNavigator do
    @max_breadth 2

    def navigate(dir) do
        expanded_dir = Path.expand(dir)  # Expands dir into a full path
        go_through([expanded_dir], 0)
    end

    defp go_through([], _current_breadth), do: nil
    defp go_through(_dirs, current_breadth) when current_breadth > @max_breadth, do: nil
    defp go_through([content | rest], current_breadth) do
        print_and_navigate(content, File.dir?(content))
        go_through(rest, current_breadth + 1)
    end

    defp print_and_navigate(_dir, false), do: nil
    defp print_and_navigate(dir, true) do
        IO.puts dir
        children_dirs = File.ls!(dir)
        go_through(expanded_dirs(children_dirs, dir))
    end

    defp expanded_dirs([], _relative_to), do: []
    defp expanded_dirs([dir | dirs], relative_to) do
        expanded_dir = Path.expand(dir, relative_to)
        [expanded_dir | expanded_dirs(dirs, relative_to)]
    end
end
