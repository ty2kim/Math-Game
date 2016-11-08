module MathGame
  # class Game
  class Game
    def initialize(player1, player2)
      @cur_player = player1
      @player1 = player1
      @player2 = player2
      @game_over = false
    end

    def generate_question
      question_set = Question.new
      question_set
    end

    def switch_player
      @cur_player == @player1 ? @cur_player = @player2 : @cur_player = @player1
    end

    def game_over
      puts "Player #{@cur_player.id} wins with a score of #{@cur_player.cur_lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    end

    def ask_question
      question_set = generate_question
      puts "Player #{@cur_player.id}: #{question_set.question}"
      print '> '
      user_input = gets.chomp.to_i
      if user_input != question_set.answer
        puts "Player #{@cur_player.id}: #{@cur_player.scream}"
        @cur_player.decr_score
      else
        @cur_player.incr_score unless @cur_player.cur_lives == 3
      end
    end

    def check_game_over
      if @cur_player.cur_lives.zero?
        @game_over = true
      else
        puts '----- NEW TURN -----'
      end
    end

    def print_cur_score
      puts "P1: #{@player1.cur_lives}/3 vs P2: #{@player2.cur_lives}/3"
    end

    def start_game
      until @game_over
        ask_question
        print_cur_score
        check_game_over
        switch_player
      end
      game_over
    end
  end
end
