require_relative 'player'

class Deck
attr_accessor :cards

SUITS = [:heart, :spade, :diamond, :club]
VALUES = {two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, J: 11, Q: 12, K: 13, A: 14}

  def initialize
    #want 52 cards, 13 of each
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end
    @cards.shuffle!
  end

  def initial_deal
    5.times { draw }
  end

  def draw(num = 1)
    hand = []
    num.times { hand << @cards.pop }
    hand
  end

end
