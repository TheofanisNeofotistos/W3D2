require_relative "Card.rb"

class Board
   
def initialize
  @grid = Array.new(4){Array.new(4," ")}
  self.populate
end

def populate
   dictionary = Array.new(13){|i| i+1}.sample(8)
   new_dictionary = (dictionary += dictionary).shuffle
  x = 0
  (0...@grid.length).each do |i|
    (0...@grid.length).each do |j| 
      @grid[i][j] = Card.new(new_dictionary[x])
      x += 1
    end
  end
  #  @grid
end 

def render 
  @grid.map do |row|
    row.map do |ele|
      print ele.face_value.to_s
      print " "
    end
    puts
  end
end

def temp_render(pos)
  (0...@grid.length).each do |i|
    (0...@grid.length).each do |j|
      print @grid[i][j].face_value if @grid[i][j].start_position == true 
      print @grid[i][j].face_value if  [i,j] == pos
      print " "
    end
  end



  @grid.map do |row|
    row.map do |ele|
      print ele.face_value.to_s if ele.start_position == true 
      print " "
    end
    puts
  end
end


def clear
  @grid.map do |row|
    row.map do |ele|
      if ele.start_position == true
        ele.start_position 
      else 
       " "
      end
      print " "
    end
    puts
  end
end

def won?
  @grid.all? do |row| 
    row.all? { |ele| ele.start_position == true }
  end
end

def[](position)
  row, col = position
  @grid[row][col]
end

def []=(position,val)
  row, col = position
  @grid[row][col] = val
end

def reveal(pos)
  row,col = pos
  card = @grid[row][col]
  card.face_value
end

end