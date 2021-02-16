class Board
  attr_reader :player_turn

  WIN_MOVES = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ].freeze

  def initialize()
    @playing_array = Array.new(9) { |n| n + 1 }
    @available_moves = 9
    @winning_moves = []
    @player_turn = 'X'
  end

  def draw_board
    puts "\n\n\n"
    puts '   |   |   '
    puts " #{@playing_array[0]} | #{@playing_array[1]} | #{@playing_array[2]} "
    puts '   |   |   '
    puts '---+---+---'
    puts '   |   |   '
    puts " #{@playing_array[3]} | #{@playing_array[4]} | #{@playing_array[5]} "
    puts '   |   |   '
    puts ' --+---+-- '
    puts '   |   |   '
    puts " #{@playing_array[6]} | #{@playing_array[7]} | #{@playing_array[8]} "
    puts '   |   |   '
    puts "\n\n"
  end

  def reset_board
    @playing_array = Array.new(9) { |n| n + 1 }
    @winning_moves = []
  end

  def change_player_turn
    @player_turn = if @player_turn == 'X'
                     'O'
                   else
                     'X'
                   end
  end

  def output_winning_moves
    @winning_moves
  end

  def game_ended?
    @available_moves < 1
  end

  def player_won?(player)
    @winning_moves = WIN_MOVES.detect do |combo|
      @playing_array[combo[0]] == @playing_array[combo[1]] &&
        @playing_array[combo[1]] == @playing_array[combo[2]] &&
        @playing_array[combo[0]] == player
    end
    !@winning_moves.nil?
  end

  def valid_entered_character?(input)
    (1..9).include?(input.to_i)
  end

  def position_taken?(input)
    @playing_array[input.to_i - 1] == 'X' || @playing_array[input.to_i - 1] == 'O'
  end

  def update_board(player, position)
    @playing_array[position] = player
    @available_moves -= 1
  end
end
