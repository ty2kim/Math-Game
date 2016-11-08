# class Player
class Player
  INITIAL_LIVES = 3
  def initialize(id)
    @player_id = id
    @current_lives = INITIAL_LIVES
  end
end
