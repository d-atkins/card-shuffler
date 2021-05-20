require 'minitest/autorun'
require './lib/card'
require './lib/deck'

class CardTest < Minitest::Test
  def setup
    @card1 = Card.new({value: 3, suit: "Spades"})
    @card2 = Card.new({value: "Ace", suit: "Spades"})
    @card3 = Card.new({value: "Jack", suit: "Hearts"})
    @card4 = Card.new({value: 7, suit: "Diamonds"})
    @card5 = Card.new({value: 5, suit: "Clubs"})
    @deck = Deck.new
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_can_add_cards
    assert_equal [], @deck.cards

    @deck.add_cards([@card1, @card2, @card3, @card4])

    assert_equal [@card1, @card2, @card3, @card4], @deck.cards

    @deck.add_cards([@card5])

    assert_equal [@card1, @card2, @card3, @card4, @card5], @deck.cards
  end

  def test_it_can_list_cards
    assert_equal "", @deck.list_cards

    @deck.add_cards([@card1, @card2, @card3])

    assert_equal "3 of Spades, Ace of Spades, Jack of Hearts", @deck.list_cards
  end

  def test_it_can_shuffle_cards
    @deck.add_cards([@card1, @card2, @card3, @card4, @card5])
    before = @deck.list_cards
    @deck.shuffle
    after = @deck.list_cards

    refute_equal before, after
  end
end
