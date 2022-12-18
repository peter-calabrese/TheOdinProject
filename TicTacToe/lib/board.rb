class Board
  attr_accessor :board
  WINNING_PAIRS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [1, 4, 7], [0, 4, 8], [6, 4, 2], [0, 3, 6], [2, 5, 8]]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def render_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts divider = "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts divider
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def update_board(position, shape)
    valid_move?(position) ? @board[position] = shape : "retry"
  end

  private

  def valid_move?(position)
    if position.between?(0, 8)
      @board[position] == " " ? true : (puts "That position is taken, please try again"; false)
    else
      puts "Not a valid move, pick a number from 1 - 9..."
      false
    end
  end

  public

  def win?(shape)
    win_found = false
    WINNING_PAIRS.each do |arr|
      ans = arr.all? { |x| @board[x] == shape }
      ans ? (win_found = true; break) : false
    end
    win_found
  end
  public
  def draw?
    @board.none? { |entry| entry == " " }
  end

end
