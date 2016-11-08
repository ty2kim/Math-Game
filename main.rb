require_relative 'player'
require_relative 'question'
require_relative 'game'

player1 = MathGame::Player.new(1)
player2 = MathGame::Player.new(2)
game = MathGame::Game.new(player1, player2)
game.start_game
