class Computer

  def initialize
    @answer
    @colors
  end

  def initialize_answer
    @colors = ['r','b','p','o','g','w']

    @answer = Array.new

    until @answer.length == 4
      color = @colors.sample
      if !(@answer.include? color)
        @answer << color
      end
    end

    puts "#{@answer}"
  end

end

computer = Computer.new
computer.initialize_answer
