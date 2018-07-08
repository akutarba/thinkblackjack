require_relative 'game'
require_relative 'player'
require_relative 'dealer'
require_relative 'card'
require_relative 'deck'


puts 'Please provide username:'
username = gets.chomp

user = User.new(username)
dealer = Dealer.new
game = Game.new(user, dealer)

game.play_round