class Deck
  attr_reader :cards

  def initialize()
    @cards = []
  end

  def add_cards(cards)
    cards.each {|card| @cards << card}
  end

  def list_cards
    @cards.map {|card| card.name}
          .join("\n")
  end

  def shuffle
    @cards.shuffle!
  end
end
