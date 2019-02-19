class Problem

  def initialize
    @num_1 = (1..20).to_a.sample
    @num_2 = (1..20).to_a.sample
    @solution = @num_1 + @num_2
  end

  def check_answer(input)
    input == @solution
  end

  def play(player)
    puts " Okay #{player}, what is #{@num_1} + #{@num_2}?"
    answer= gets.chomp.to_i
    check_answer(answer)
  end

end

