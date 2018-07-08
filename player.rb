class Player
  attr_accessor :name, :money, :cards

  def initialize(name)
    @name = name
    @money = 100
    @cards = []
  end

  def print_info(player, attr)
    puts "#{player.name}'s #{attr.to_s.capitalize}: #{player.send(attr)}"
  end

  def make_bet
    @money -= 10
  end
end