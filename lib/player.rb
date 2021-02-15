class Player
  attr_reader :player_name
  attr_accessor :player_score

  def initialize(player_name)
    @player_name = player_name
    @player_score = 0
  end
end
