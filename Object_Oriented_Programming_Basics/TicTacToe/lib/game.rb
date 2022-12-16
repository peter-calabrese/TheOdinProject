# frozen_string_literal: true
require_relative 'board'

class Game

  def initialize
    @board = Board.new
  end

  def start_game(first_player, second_player)
    puts "Welcome to Tic Tac Toe!"
    puts "-----------------------"
    puts "#{first_player.name}: #{first_player.shape} vs. #{second_player.name}: #{second_player.shape}"
    @board.render_board
  end

  def player_move(move, current_player)
    response = @board.update_board(move, current_player.shape)
    @board.render_board
    response
  end

  def switch_player(current_player, first_player, second_player)
    if current_player == first_player
      second_player
    else
      first_player
    end
  end
  def player_win(current_player)
    @board.win?(current_player.shape)
  end
  def check_for_draw
    @board.draw?
  end
end
