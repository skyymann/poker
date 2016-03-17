require_relative 'card'
class Hand
  HAND_SCORES = {high_card: 1, one_pair: 2, two_pair: 3, three_of_a_kind: 4, straight: 5, flush: 6, full_house: 7, four_of_a_kind: 8, straight_flush: 9}

  attr_accessor :cards
  def initialize(cards)
    @cards = cards.sort_by {|card| card.value }
    @score = best_hand(@cards)
  end

  def compare_hands(hand1, hand2)
    hand1.score > hand2.score ? hand1 : hand2
  end

  def best_hand(cards) # return int
    if straight_flush?
      max_card = cards.sort.last
      return [true, cards.]
    elsif four_of_a_kind?()
  end

  def high_card?(cards)
  end

  def one_pair?(cards)
  end

  def two_pair?(cards)
  end

  def three_of_a_kind?(cards)
  end

  def straight?(cards)
    cards.first.value == cards.last.value - 4
  end

  def flush?(cards)
    if cards.all? do |card| card.suit == cards.first.suit
      return true
    end
    false
  end

  def full_house?(cards)
    one_pair?(value) && three_of_a_kind?(value)
  end

  def four_of_a_kind?(cards)
    cards.each {|card| card.value.count(card.value) == 4 }
  end

  def straight_flush?(cards)
    straight?(value) && flush?(suit)
  end

end
