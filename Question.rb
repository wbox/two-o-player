class Question

  attr_reader :num1, :num2, :answer

  def new_question
    num1 = rand(1...20)
    num2 = rand(1...20)
    @answer = num1 + num2
    "What does #{num1} plus #{num2} equal?"
  end

  def check_answer(player_answer)
    player_answer == @answer
  end



end
