class User

  def input_valide?
    if @col_a > 3 || @col_b >3 || @col_a < 3 || @col_b <3
      puts "please enter the correct col number"
      return false
    end
  end

  def input
      input = []

    while !input_valide?
      puts "Input disk number and the col you want to move the disk to"
      puts "input col to move from"
      @col_a = gets.chomp.to_i
      puts "input col to move to"
      @col_b = gets.chomp.to_i
    end

      input = [col_a, col_b]
      return input
    end

def Tower input
  disk1=1
  disk2=2
  disk3=3
  disk4=4
  @col1=[disk1,disk2,disk3,disk4]
  @col2=[]
  @col3=[]

  def find col_a
    if input[0] == 1
      return @col1
    elsif input[0] == 2
      return @col2
    else
      return @col3
    end
  end

  def find col_b
    if input[1] == 1
      return @col1
    elsif input[1] == 2
      return @col2
    else
      return @col3
    end
  end
end


def move_valid? col_a col_b
  if col_b[-1] > col_a[-1]
    puts"you can't move a large disk onto a small disk!"
    return false
  end
end

def GameOver? col3
  if col3.length == 4
    return true
  end
end






class Game
   #
  #  @user = User.new
  #  disk1=1
  #  disk2=2
  #  disk3=3
  #  disk4=4
   #
  #  @col1=[disk1,disk2,disk3,disk4]
  #  @col2=[]
  #  @col3=[]

   def play

     while !GameOver
       def move_disk
         a = @user.input
         if valid? (a[0], a[1])

           return col1
           return col2
           return col3
           return col4
         end
       end
     end
   end
 end

 Game disk_game
 disk_game.play
