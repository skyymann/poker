require_relative 'player'
require_relative 'hand'
require_relative 'deck'
require_relative 'card'

class Game

attr_accessor :pot
  def initialize(players)
    @deck = Deck.new
    players.each do |player|
      player = Player.new(@deck)
    end
    @pot = 0
  end

end
