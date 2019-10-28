require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"

puts "Game Start!"
deck = Deck.new
puts "There are 52 cards in the deck."

player1 = Hand.new(deck)
player2 = Hand.new(deck)

puts "Player 1 was dealt " + player1.read_out
puts "Player 2 was dealt " + player2.read_out

puts "Player 1's hand value: " + player1.value.to_s
puts "player 2's hand value: " + player2.value.to_s

if player1.value > player2.value
  puts "player 1 wins the game!"
elsif player1.value < player2.value
  puts "Player 2 wins the game!"
else
  puts "TIE GAME!"
end
