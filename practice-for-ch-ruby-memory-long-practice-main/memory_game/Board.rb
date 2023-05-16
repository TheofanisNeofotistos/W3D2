require_relative "Card.rb"

class Board
   
def initialize
  @grid = Array.new(4){Array.new(4," ")}

end

def populate
   dictionary = Array.new(13){|i| i+1}.sample(8)
   new_dictionary = (dictionary += dictionary).shuffle
  x = 0
  (0...@grid.length).each do |i|
    (0...@grid.length).each do |j| 
      @grid[i][j] = new_dictionary[x]
      x += 1
    end
  end
   @grid
end 

def render 
  @grid.each{|ele| p ele.join(" ")}
end

end