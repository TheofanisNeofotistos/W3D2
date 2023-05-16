require_relative "Board.rb"
require_relative "Card.rb"


class Game 
    def initialize
        @board = Board.new
        @guessed_pos = ""
        @previous_guess = ""
    end 

    def make_guess
        p "Enter a position `1 2`"
        pos = gets.chomp.split.map(&:to_i)
        return @board.reveal(pos)
    end
    
    def play
        until @board.won? 
          self.system("clear")
           
            if @previous_guess == ""
                @previous_guess = self.make_guess
                @board.temp_render  
                    

            else
                @guessed_pos = self.make_guess
                @board.render

                self.checker(@previous_guess, @guessed_pos)
            end

        end
    end

    

    def checker(previous_guess,guessed_pos)

        if @previous_guess == @guessed_pos
           @previous_guess.starting_position = true 
           @guessed_pos.starting_position = true
        end
        @previous_guess = ""
    end

    def system(value)
      if value == 'clear'
        @board.clear
      end
    end

end 