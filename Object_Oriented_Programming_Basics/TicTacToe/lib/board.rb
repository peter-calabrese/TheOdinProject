# frozen_string_literal: true

class Board

  WINNING_PAIRS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 6], [1, 5, 9], [7, 5, 9], [3, 6, 9]]



  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  def draw_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end

