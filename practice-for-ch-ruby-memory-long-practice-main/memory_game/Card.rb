class Card
  attr_reader :face_value, :start_position
  def initialize(face_value)
    @face_value = face_value
    @start_position = false  # true == face up | false == face down
  end

  def card_information
    @face_value
  end

  def hide
    return " "
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
