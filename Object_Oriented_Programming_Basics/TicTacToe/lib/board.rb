class Board
  attr_accessor :board
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  def render_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts divider = "-----------"
    puts" #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts divider
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
  def update_board(position, shape)
    valid_move?(position) ? @board[position]=shape : "retry"
  end
  private
  def valid_move?(position)
    if position.between?(0,8)
      @board[position] == " " ? true : (puts "That position is taken, please try again"; false)
    else
      puts "Not a valid move, pick a number from 1 - 9..."
      false
    end
  end
end
