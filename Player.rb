class Player

  def initialize
    @input = Array.new
    @colors = ['r','b','p','o','g','w']
  end


  def input_color

    puts "welcome to the mastermind game, you can choose 4 colors from r(red), b(blue),p(purple),o(orange),g(green) and w(white) "
    until @input.length == 4
      puts "please input the color you choose"

      color_pick = gets.chomp().to_s
      if !(@colors.include? color_pick)
        puts"please select from given colors\n"
      elsif @input.include? color_pick
        puts "you can't choose the same color twice\n"

      else
        @input << color_pick
      end
    end

    puts "#{@input}"
  end




end


player = Player.new
player.input_color
