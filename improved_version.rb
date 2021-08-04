class Board
    def initialize 
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @player = ['x', 'o']
        @valid = false
    end
    def display_board 
        puts "\n======="
      print "#{@board[0]}  #{@board[1]}  #{@board[2]}\n#{@board[3]}  #{@board[4]}  #{@board[5]}\n#{@board[6]}  #{@board[7]}  #{@board[8]}"
      puts "\n=======" 
    end
    def tile_check(tile)
        @valid = false
        while @valid == false 
            tile = tile.to_i
            if tile < 1 || tile > 9
                self.display_board
                puts "Please choose a valid tile."  
                new_tile = gets.chomp
            elsif @board[tile - 1] == 'x' or @board[tile - 1] == 'o'
                self.display_board
                puts "Please choose an untaken tile."
                new_tile = gets.chomp
            else
                @valid = true
            end
            unless @valid
                tile = new_tile
            end
        end
        return tile
    end
    def player_change
       @player = @player.reverse
    end
    def win_conditions
        if @board[0] == @board[1] && @board[0] == @board[2]
            return true
        elsif @board[3] == @board[4] && @board[3] == @board[5]
            return true
        elsif @board[6] == @board[7] && @board[6] == @board[8]
            return true
        elsif @board[0] == @board[3] && @board[0] == @board[6]
            return true
        elsif @board[1] == @board[4] && @board[1] == @board[7]
            return true
        elsif @board[2] == @board[5] && @board[2] == @board[8]
            return true
        elsif @board[0] == @board[4] && @board[0] == @board[8]
            return true
        elsif @board[2] == @board[4] && @board[2] == @board[6]
            return true
        end
        return false
    end
    def win_check
        if @player[0] == 'x'
            current_player = 'Player 1'  
        else 
            current_player = 'Player 2'
        end
        if self.win_conditions
            self.display_board
            print "#{current_player} wins!"
            exit
        end
    end
    def tie_check
        count = 0
        @board.each do |tile|
           count += 1 if tile == 'x' || tile == 'o'
        end
        if count == 9
            puts "It's a tie game!"
            exit
        end
    end

    def move
        puts "Please select a new tile or type 'exit' to end the game."
        tile = gets.chomp
        if tile.downcase === 'exit'
            print "See you next time!"
            exit
        end
        valid_tile = tile_check(tile)
        @board[valid_tile.to_i - 1] = @player[0]
        puts "board is #{@board}"
    end

    def turn
        self.display_board
        self.move
        self.win_check
        self.tie_check
        self.player_change  
    end
end
board = Board.new
puts " Player 1 will mark tiles with 'x'. \n Player 2 will mark tiles with 'o'."
while true
    board.turn
end
