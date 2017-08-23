
# deck.rb

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
    # shuffles the deck
    @cards.shuffle!
  end

  def draw
    return @cards.pop.to_s
  end

  def count
    # returns the number of cards left in the deck
    return @cards.length
  end
end
