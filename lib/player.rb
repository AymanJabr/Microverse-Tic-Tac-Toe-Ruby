class Player
  attr_reader :player_name, :player_tag
  attr_accessor :player_score

  def initialize(player_name, player_tag)
    @player_name = player_name
    @player_score = 0
    @player_tag = player_tag
  end
end
