require_relative 'board.rb'
class Game

  def initialize(first_player = "Player1", second_player="Player2")
    @first_player = first_player
    @second_player = second_player
    @board = Board.new
  end

  def intro
    puts "Welcome #{@first_player} and #{@second_player}"
    @board.draw_board
  end

  def get_player_input(player_input)

  end
end
