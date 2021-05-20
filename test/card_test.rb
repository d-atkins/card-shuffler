require 'minitest/autorun'
require './lib/card'

class CardTest < Minitest::Test
  def setup
    @card = Card.new({value: 3, suit: "Spades"})
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_it_has_attributes
    assert_equal 3, @card.value
    assert_equal "Spades", @card.suit
  end

  def test_it_has_a_name
    assert_equal "3 of Spades", @card.name
  end
end
