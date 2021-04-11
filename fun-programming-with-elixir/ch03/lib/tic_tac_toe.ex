# Create a function that returns Tic-Tac-Toe game winners.
# You can represent the board with a tuple of nine elements,
# where each group of three items is a row.

# The return of the function should be a tuple. When we have a winner,
# the first element should be the atom :winner, and the second should
# be the player. When we have no winner, the tuple should contain one
# item that is the atom :no_winner.

defmodule TicTacToe do
    def winner({
        w, w, w,
        _, _, _,
        _, _, _
    }), do: {:winner, w}

    def winner({
        _, _, _,
        w, w, w,
        _, _, _
    }), do: {:winner, w}

    def winner({
        _, _, _,
        _, _, _,
        w, w, w
    }), do: {:winner, w}
    
    def winner({
        w, _, _,
        w, _, _,
        w, _, _
    }), do: {:winner, w}

    def winner({
        _, w, _,
        _, w, _,
        _, w, _
    }), do: {:winner, w}

    def winner({
        _, _, w,
        _, _, w,
        _, _, w
    }), do: {:winner, w}

    def winner({
        w, _, _,
        _, w, _,
        _, _, w
    }), do: {:winner, w}

    def winner({
        _, _, w,
        _, w, _,
        w, _, _
    }), do: {:winner, w}

    # def winner({
    #     _, _, _,
    #     _, _, _,
    #     _, _, _
    # }) do
    #     :no_winner
    # end

    def winner(_board), do: :no_winner
end
