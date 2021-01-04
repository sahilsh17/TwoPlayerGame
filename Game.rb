class Game 
  attr_accessor :lives, :player
  def initialize(player, lives)
    @player = player
    @lives = lives
  end
end