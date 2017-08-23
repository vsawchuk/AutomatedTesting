

require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  before do
    @deck = Deck.new
  end
  it "Can be created" do
    @deck.class.must_equal Deck
  end
  it "Has 52 cards" do
    @deck.cards.length.must_equal 52
  end
  it "Can be shuffled" do
    @deck.must_respond_to :shuffle
  end
  it "Can draw a card" do
    original_count = @deck.count
    @deck.draw.class.must_equal String
    @deck.count.must_equal (original_count - 1)
  end
  it "Can count the cards in the deck" do
    @deck.count.must_be :<, 53
    @deck.count.must_be :>, -1
  end
end
