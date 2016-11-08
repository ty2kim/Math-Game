module MathGame
  # class Player
  class Player
    INITIAL_LIVES = 3
    WRONG_MSG = ['Seriously? No!', 'ZOMG No NO NO!'].freeze
    attr_reader :id, :cur_lives
    def initialize(id)
      @id = id
      @cur_lives = INITIAL_LIVES
    end

    def decr_score
      @cur_lives -= 1
    end

    def incr_score
      @cur_lives += 1
    end

    def scream
      WRONG_MSG[rand(2)]
    end
  end
end
