require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    suits = [:clubs, :diamonds, :hearts, :spades]
    suits.each do |asuit|
      (1..13).each do |value|
        @cards.push(Card.new(value, asuit))
      end
    end
    @cards.shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    return @cards.pop.to_s
  end

  def count
    return @cards.length
  end
end
