require_relative "Board.rb"
require_relative "Card.rb"


class Game 
    def initialize
        @board = Board.new
        @guessed_pos = ""
        @previous_guess = ""


    end 

    def play
        until @board.won? 
            @board.render
            p "Enter a position"
            pos = gets.chomp
            if @previous_guess == ""
                @previous_guess = @board.reveal(pos)
            else
                @guessed_pos = @board.reveal(pos)
            end
        end
    end

    def checker(@previous_guess,@guessed_pos)

        if @previous_guess == @guessed_pos
           @previous_guess.starting_position = true 
           @guessed_pos.starting_position = true
        end
        @previous_guess = ""
    end

end 