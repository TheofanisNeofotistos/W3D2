class Card
  attr_reader :face_value, :start_position
  def initialize(face_value)
    @face_value = face_value
    @start_position = false 
  end

  def face_up
    true
  end

  def face_down
    false
  end

  def card_information
    self.reveal
  end

  def hide
    return " "
  end

  def reveal
    if self.face_up
      return @face_value
    end 
    self.face_down
  end

  def to_s(face_value)
    return face_value.to_s
  end

  def ==(card_1, card_2)
    if card_1 == card_2
      true
    else
      false
    end
  end

end
