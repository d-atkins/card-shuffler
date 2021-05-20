# Shuffler

## Implementation
This project consists of classes for `Card` and `Deck`.
A `Card` has a `value` and `suit`.
A `Deck` consists of a list of cards.
The card shuffler was implemented as a method of `Deck`, called `shuffle`.

The `Deck#shuffle` method is simply an invocation of the Ruby array method `shuffle!`

I was debating coming up with my own implementation, but I think it's fair to argue that much of the Ruby skill set boils down to API knowledge. If I were to write my own implementation, I would do as follows:

```ruby
def shuffle
  @cards.each.with_index do |card, index|
    swap_index = rand(@cards.length)
    @cards[index], @cards[swap_index] = @cards[swap_index], @cards[index]
  end
end
```

## Usage
Running it:
```
$ ruby shuffler_runner.rb
```

`shuffler_runner.rb` will generate a standard 52-card deck and prompt for user input.

The user can:
- enter `p` to print the cards in the deck in its current order
- enter `s` to shuffle the cards in the deck
- enter `q` to end the program

## Tests
Running the suite:
```
$ rake test
```

The test suite is comprised of basic attribute and method tests.

Since it's quite difficult to test the randomness of the shuffle method,
the test for `shuffle` only checks that the deck is different after being shuffled.

There is a small chance that the test will fail if the deck is shuffled back into the same order.
