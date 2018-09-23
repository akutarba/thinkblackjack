require_relative 'game'
require_relative 'player'
require_relative 'dealer'
require_relative 'card'
require_relative 'deck'
require_relative 'gambler'

puts 'Please provide username:'
username = gets.chomp

gambler = Gambler.new(username)
dealer = Dealer.new
game = Game.new(gambler, dealer)

game.round_play