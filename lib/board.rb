class Board
  attr_writer :playing_array

  def initialize()
    @playing_array = Array.new(9) { |n| n += 1 }
    draw_board
    @available_moves = 9
  end

  def draw_board
    puts '   |   |   '
    puts " #{@playing_array[0]} | #{@playing_array[1]} | #{@playing_array[2]} "
    puts '   |   |   '
    puts '-----------'
    puts '   |   |   '
    puts " #{@playing_array[3]} | #{@playing_array[4]} | #{@playing_array[5]} "
    puts '   |   |   '
    puts ' --------- '
    puts '   |   |   '
    puts " #{@playing_array[6]} | #{@playing_array[7]} | #{@playing_array[8]} "
    puts '   |   |   '
    puts "\n\n\n\n"
  end

  def has_game_ended?
    @available_moves < 1
  end

  def has_player_won?(player)
    # check if a row is all equal
    player_has_won = false
    if @playing_array[0..2].all?(player.to_s) || @playing_array[3..5].all?(player.to_s) || @playing_array[6..8].all?(player.to_s)
      player_has_won = true
    end

    # check if a column is all equal
    if @playing_array.select.with_index do |_n, i|
         (i % 3).zero?
       end.all?(player.to_s) || @playing_array.select.with_index do |_n, i|
                                  i % 3 == 1
                                end.all?(player.to_s) || @playing_array.select.with_index do |_n, i|
                                                           (i % 3).zero?
                                                         end.all?(player.to_s)
      player_has_won = true
    end

    # check if a diagonal is all equal
    if (@playing_array[0] == player.to_s && @playing_array[4] == player.to_s && @playing_array[8] == player.to_s) || (@playing_array[2] == player.to_s && @playing_array[4] == player.to_s && @playing_array[6] == player.to_s)
      player_has_won = true
    end

    player_has_won
  end

  def update_board(player, position)
    @playing_array[position] = player
    @available_moves -= 1
  end
end
