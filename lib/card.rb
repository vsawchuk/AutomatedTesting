
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if (1..13).to_a.include?(value) == false
      raise ArgumentError.new("The value must be an integer between 1 and 13.")
    end
    if [:clubs, :diamonds, :hearts, :spades].include?(suit) == false
      raise ArgumentError.new("The suit must be clubs, diamonds, hearts, or spades.")
    end

    @value = value
    @suit = suit


  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
