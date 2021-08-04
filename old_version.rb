
class Board
@@one = '1'
@@two = '2'
@@three = '3'
@@four = '4'
@@five = '5'
@@six = '6'
@@seven = '7'
@@eight = '8'
@@nine = '9'

@@tiles = [@@one,@@two,@@three,@@four,@@five,@@six,@@seven,@@eight,@@nine]
    
    def initialize(id)
        @id = id
    end
    def display_board 
      puts "\n======="
    print "#{@@one}  #{@@two}  #{@@three}\n#{@@four}  #{@@five}  #{@@six}\n#{@@seven}  #{@@eight}  #{@@nine}"
    puts "\n=======" 
    end

    def reset
      @@one = '1'
      @@two = '2'
      @@three = '3'
      @@four = '4'
      @@five = '5'
      @@six = '6'
      @@seven = '7'
      @@eight = '8'
      @@nine = '9'
      puts "\nThe Board Has Been Reset"
    end

end
  
class PlayerOne < Board
  
  def initialize(player_id)
    @player_id = player_id
  end
  def x_win_check(tile1,tile2,tile3) 
  #combos are 123,456,789,147,258,369,159,357
    if tile1 == 'x' && tile2 == 'x' && tile3 == 'x'
      self.display_board
      puts "\n\nGame Over! #{@player_id} Wins!"
      exit
    end
  
  end
  def tie_check 
    @@tiles.each do |tile|
      if tile != 'x' || tile != 'o'
        return
      end
    end                           
      puts "\nThe game is a tie!"
      self.reset
  end


  def x_move(tile)
    case tile
    when '1' 
     unless @@one == 'o' || @@one == 'x'
      @@one = 'x' 
     else 
      self.display_board
      puts "\nThat tile was already taken! Please choose again."
      mulligan = gets.chomp
      x_move(mulligan)
     end 
    when '2' 
      unless @@two == 'o' || @@two == 'x'
        @@two = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '3' 
      unless @@three == 'o' || @@three == 'x'
        @@three = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '4' 
      unless @@four == 'o' || @@four == 'x'
        @@four = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '5' 
      unless @@five == 'o' || @@five == 'x'
        @@five = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '6' 
      unless @@six == 'o' || @@six == 'x'
        @@six = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '7' 
      unless @@seven == 'o' || @@seven == 'x'
        @@seven = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '8' 
      unless @@eight == 'o' || @@eight == 'x'
        @@eight = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    when '9' 
      unless @@nine == 'o' || @@nine == 'x'
        @@nine = 'x'
      else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
        mulligan = gets.chomp
        x_move(mulligan)
      end
    else puts "\nError Encountered! Please re-select an empty tile from 1 to 9"
      reselect = gets.chomp
      x_move(reselect)

    end #combos are 123,456,789,147,258,369,159,357
    self.x_win_check(@@one,@@two,@@three)
    self.x_win_check(@@four,@@five,@@six)
    self.x_win_check(@@seven,@@eight, @@nine)
    self.x_win_check(@@one,@@four,@@seven)
    self.x_win_check(@@two,@@five,@@eight)
    self.x_win_check(@@three,@@six,@@nine)
    self.x_win_check(@@one,@@five,@@nine)
    self.x_win_check(@@three,@@five,@@seven)
  end
  
end 

class PlayerTwo < PlayerOne
  def initialize(player_id)
    @player_id = player_id
  end
  def o_win_check(tile1,tile2,tile3) 
    if tile1 == 'o' && tile2 == 'o' && tile3 == 'o'
      puts "Game Over! #{@player_id} Wins!"
      self.display_board
      exit
    end
    
    end


  def o_move(tile)
    case tile
    when '1' 
      unless @@one == 'o' || @@one == 'x'
       @@one = 'o' 
      else 
      self.display_board
       puts "\nThat tile was already taken! Please choose again." 
       mulligan = gets.chomp
       o_move(mulligan)
      end 
     when '2' 
       unless @@two == 'o' || @@two == 'x'
         @@two = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '3' 
       unless @@three == 'o' || @@three == 'x'
         @@three = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '4' 
       unless @@four == 'o' || @@four == 'x'
         @@four = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '5' 
       unless @@five == 'o' || @@five == 'x'
         @@five = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '6' 
       unless @@six == 'o' || @@six == 'x'
         @@six = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '7' 
       unless @@seven == 'o' || @@seven == 'x'
         @@seven = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '8' 
       unless @@eight == 'o' || @@eight == 'x'
         @@eight = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
     when '9' 
       unless @@nine == 'o' || @@nine == 'x'
         @@nine = 'o'
       else 
        self.display_board
        puts "\nThat tile was already taken! Please choose again."
         mulligan = gets.chomp
         o_move(mulligan)
       end
    else puts "\nError Encountered! Please select an empty tile from 1 to 9"
      reselect = gets.chomp
      o_move(reselect)
    end
    self.o_win_check(@@one,@@two,@@three)
    self.o_win_check(@@four,@@five,@@six)
    self.o_win_check(@@seven,@@eight, @@nine)
    self.o_win_check(@@one,@@four,@@seven)
    self.o_win_check(@@two,@@five,@@eight)
    self.o_win_check(@@three,@@six,@@nine)
    self.o_win_check(@@one,@@five,@@nine)
    self.o_win_check(@@three,@@five,@@seven)
    self.tie_check
  end

end 

  gameboard = Board.new('board')
def xmove(player) 
puts "\n#{player}'s turn. Please select an empty tile to mark with 'x'."
end

def omove(player)
  puts "\n #{player}'s turn. Please select an empty tile to mark with 'o'."
end
 puts "Player One, Please Enter Your Name, You Are 'x' This Game."
player_one_name = gets.chomp
puts "Player Two, Please Enter Your Name, You Are 'o' This Game."
player_two_name = gets.chomp

  player_one = PlayerOne.new(player_one_name)
  player_two = PlayerTwo.new(player_two_name)
  gameboard.display_board 
  xmove(player_one_name)
  first = gets.chomp
  player_one.x_move(first)
  gameboard.display_board
  omove(player_two_name)
  second = gets.chomp
  player_two.o_move(second)
  gameboard.display_board

  xmove(player_one_name)
  third = gets.chomp
  player_one.x_move(third)
  gameboard.display_board
  omove(player_two_name)
  fourth = gets.chomp
  player_two.o_move(fourth)
  gameboard.display_board
  xmove(player_one_name)
  fifth = gets.chomp
  player_one.x_move(fifth)
  gameboard.display_board
  omove(player_two_name)
  sixth = gets.chomp
  player_two.o_move(sixth)
  gameboard.display_board
  xmove(player_one_name)
  seventh = gets.chomp
  gameboard.display_board
  player_one.x_move(seventh)
  gameboard.display_board
  omove(player_two_name)
  eighth = gets.chomp
  player_two.o_move(eighth)
  gameboard.display_board
  xmove(player_one_name)
  ninth = gets.chomp
  player_one.x_move(ninth)
  gameboard.display_board
  puts "\n The Game is a Tie!"