

class Board 

    def initialize()
        @playing_array = Array.new(9){|n| n = " "}
        puts draw_board([1,2,3,4,5,6,7,8,9])
    
    end

    def draw_board(a)

        puts "   |   |   "
        puts " #{a[0]} | #{a[1]} | #{a[2]} "
        puts "   |   |   "
        puts "-----------"
        puts "   |   |   "
        puts " #{a[3]} | #{a[4]} | #{a[5]} "
        puts "   |   |   "
        puts " --------- "
        puts "   |   |   "
        puts " #{a[6]} | #{a[7]} | #{a[8]} "
        puts "   |   |   "

    end

    def update_board(player,position){
        @playing_array[position] = player
    }

    private

end

my_board = Board.new()

