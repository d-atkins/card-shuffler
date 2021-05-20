class Card
  attr_reader :value, :suit

  def initialize(card_data)
    @value = card_data[:value]
    @suit = card_data[:suit]
  end

  def name
    "#{@value} of #{@suit}"
  end
end
