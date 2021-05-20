require './lib/card'
require './lib/deck'

VALUES = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
SUITS = ['Spades', 'Clubs', 'Hearts', 'Diamonds']

deck = Deck.new

VALUES.product(SUITS).each do |value, suit|
  deck.add_cards([Card.new({value: value, suit: suit})])
end

puts "The Deck:\n\n"
puts deck.list_cards

while true
  puts "\nEnter command - s:shuffle, p:print, q:quit"
  case gets.chomp
  when 's'
    deck.shuffle
  when 'p'
    puts deck.list_cards
  when 'q'
    break
  end
end
