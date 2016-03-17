class Card
attr_reader :value, :suit


  def initialize(value, suit)
    @value = value.last
    @letter = value.first.to_s
    @suit = suit
  end

  def values
  end


end
