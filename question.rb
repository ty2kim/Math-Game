module MathGame
  # class Question
  class Question
    attr_reader :question, :answer
    def initialize
      @a = rand(1..20)
      @b = rand(1..20)
      @question = "What does #{@a} plus #{@b} equal?"
      @answer = @a + @b
    end
  end
end
