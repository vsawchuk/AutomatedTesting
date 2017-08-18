
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
    case @value
      when 1
        @face = "Ace"
      when 2, 3, 4, 5, 6, 7, 8, 9, 10
        @face = @value.to_s
      when 11
        @face = "Jack"
      when 12
        @face = "Queen"
      when 13
        @face = "King"
    end


  end

  def to_s
    return "#{@face} of #{@suit.to_s}"
  end

end
