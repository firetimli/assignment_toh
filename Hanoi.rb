=begin
Player:
    public: input
    Private, input_validation

Board:
    public: change_board, display
    Private: change_validation

Game:
    public: play, game_over?
    Private:





=end

require 'pry'



class User

  def display_input
    input = []

    puts "Input the col you want to move the disk from and move the disk to"
    puts "-----------------------------------------------------------------"
    puts "input col to move from"
    @a = gets.chomp.to_i
    puts "input col to move to"
    @b = gets.chomp.to_i
  end
  def input
    input = [@a, @b]
    return input
  end

  def input_valid? input
    if (1..3).include?(input[0]) && (1..3).include?(input[1])
      return true
    else
    puts "please write correct col number"
  end
end

end




class Tower

  attr_reader :col1, :col2, :col3, :ini_range

  def initialize
    @num_disks = 4

    @ini_range = [4,3,2,1]
    @col1=@ini_range
    @col2=[]
    @col3=[]
  end

  def display_tower
    puts "col1"+"#{@ini_range}"
    puts "col2"+"#{@col2}"
    puts "col3"+"#{@col3}"
  end

  def find_a input
    if input[0] == 1
      return @col1
    elsif input[0] == 2
      return @col2
    elsif input[0] == 3
      return @col3
    else
      puts "please enter the correct col number"
    end
  end


  def find_b input
    if input[1] == 1
      return @col1
    elsif input[1] == 2
      return @col2
    elsif input[1] == 3
      return @col3
    else
      puts "please enter the correct col number"
    end
  end

  def move_valid? input
    disk_a = find_a(input)[-1]
    disk_b = find_b(input)[-1]
    if disk_b == nil && disk_a != nil
      return true
    elsif disk_b != nil &&disk_a != nil && disk_b > disk_a
      return true
    else
      return false
    end
  end

  def gameover?
    true if @col3 == [4,3,2,1]
  end

  def col_fill col
    result =[]
    @num_disks.times do |i|
      if col[i] != nil
        result << col[i]
      else
        result << 0
      end
    end
    result
  end

  def display_line n
    move_distance = @num_disks+2
    unless n.nil?
      ("o"*n).rjust(move_distance) + '|' + ('o'*n).ljust(move_distance)
    else
      " ".rjust(move_distance)+ '|'+ " ".ljust(move_distance)
    end
  end

  def display_all
    @num_disks.times do |i|
      print display_line col_fill(@col1).sort[i]
      print display_line col_fill(@col2).sort[i]
      print display_line col_fill(@col3).sort[i]
      puts "\n"
    end
  end
end

def game_start

  @player = User.new
  @tower = Tower.new

  while !@tower.gameover?
    @tower.display_all
    @player.display_input
    input =@player.input
    if @player.input_valid?(input)
    @col_a = @tower.find_a(input)
    @col_b = @tower.find_b(input)

    if @tower.move_valid?(input)
      @col_b << @col_a.pop
    else
      puts "can't move disk this way \n"
    end
  end

  end

  puts "you win!"
end
