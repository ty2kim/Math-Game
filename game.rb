module MathGame
  # class Game
  class Game
    WRONG_MSG = ['Seriously? No!', 'ZOMG No NO NO!'].freeze
    def initialize(player1, player2)
      @current_player = player1
      @player1 = player1
      @player2 = player2
      @game_over = false
    end

    def generate_question
      question_set = Question.new
      question_set
    end

    def switch_player
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
    end

    def game_over
      puts "Player #{@current_player.player_id} wins with a score of #{@current_player.current_lives}\/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    end

    def start_game
      until @game_over
        question_set = generate_question
        puts "Player #{@current_player.player_id}: #{question_set.question}"
        print '> '
        user_input = gets.chomp.to_i
        if user_input != question_set.answer
          puts "Player #{@current_player.player_id}: #{WRONG_MSG[rand(2)]}"
          @current_player.decr_score
        else
          @current_player.incr_score unless @current_player.current_lives == 3
        end
        puts "P1: #{@player1.current_lives}\/3 vs P2: #{@player2.current_lives}\/3"
        if @current_player.current_lives.zero?
          @game_over = true
        else
          puts '----- NEW TURN -----'
        end
        switch_player
      end
      game_over
    end
  end
end
