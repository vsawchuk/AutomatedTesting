
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do
    before do
      @suits = [:clubs, :diamonds, :hearts, :spades]
    end
    it "Can be created" do
      @suits.each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    before do
      @suits = [:clubs, :diamonds, :hearts, :spades]
    end
    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      9.times do
        value = (2..10).to_a.sample
        suit = @suits.sample
        card = Card.new(value, suit)
        card.to_s.class.must_equal String
      end
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      4.times do
        value = [1, 11, 12, 13].sample
        faces = ["Ace", "Jack", "Queen", "King"]
        suit = @suits.sample
        card = Card.new(value, suit)
        cardface = card.to_s.split(" ")[0]
        faces.include?(cardface).must_equal true
      end
    end
  end

  describe "Reader methods" do
    before do
      @suits = [:clubs, :diamonds, :hearts, :spades]
      @value = (1..13).to_a.sample
      @suit = @suits.sample
    end

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      card = Card.new(@value, @suit)
      (1..13).to_a.include?(card.value)
      card.value.class.must_equal Integer
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card = Card.new(@value, @suit)
      @suits.include?(card.suit)
      card.suit.class.must_equal Symbol
    end
  end

end
