
class Board
    attr_writer :playing_array

    def initialize()
        @playing_array = Array.new(9){|n| n = "-"}
         draw_board
        @available_moves = 9
    end

    def draw_board

        puts "   |   |   "
        puts " #{@playing_array[0]} | #{@playing_array[1]} | #{@playing_array[2]} "
        puts "   |   |   "
        puts "-----------"
        puts "   |   |   "
        puts " #{@playing_array[3]} | #{@playing_array[4]} | #{@playing_array[5]} "
        puts "   |   |   "
        puts " --------- "
        puts "   |   |   "
        puts " #{@playing_array[6]} | #{@playing_array[7]} | #{@playing_array[8]} "
        puts "   |   |   "

    end


    def update_board(player , position)

        @playing_array[position] = player
        @available_moves -= 1
    end


end


#get 2 - int 0 x

my_board = Board.new
my_board.update_board('x', 6)

my_board.draw_board

