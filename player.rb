module MathGame
  # class Player
  class Player
    INITIAL_LIVES = 3
    attr_reader :player_id, :current_lives
    def initialize(id)
      @player_id = id
      @current_lives = INITIAL_LIVES
    end

    def decr_score
      @current_lives -= 1
    end

    def incr_score
      @current_lives += 1
    end
  end
end
