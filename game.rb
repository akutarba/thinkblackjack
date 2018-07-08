require_relative 'player'
require_relative 'card'


class Game

  attr_accessor :user, :dealer, :deck, :bank

  def initialize(user, dealer = Dealer.new)
    @user = user
    @dealer = dealer
    @bank = 0
  end

  def new_round
    print_info(user, :money)
    @deck = Deck.new
    @deck.shuffle!
    [user, dealer].each do |player|
      player.cards = []
      player.make_bet
      2.times {take_card(player)}
    end
    @bank = 20
  end
  def take_card(player)
    player.cards << deck.pull_out
  end

  def play_round
    new_round
    until round_end?
      gampler_turn
      dealer_turn
    end
    open_cards
  end
end