require_relative 'board.rb'
class Game

  def initialize(first_player, second_player)
    @first_player = first_player
    @second_player = second_player
    @board = Board.new
  end

  def intro
    puts "#{@first_player.name}: #{@first_player.shape} vs. #{@second_player.name}: #{@second_player.shape}"
    @board.draw_board
  end

  def get_player_input
    puts "Where would you like to go? [1-9]"
    input = gets.chomp.to_i

  end

  def is_space_free(input)
    @board[input] == " " ? true : false
  end
end
