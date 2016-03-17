require_relative 'hand'
class Player
  attr_accessor :hand, :pot

  def initialize(deck, stash = 1000)
    @hand = deck.initial_deal
    @pot = pot
  end
end
