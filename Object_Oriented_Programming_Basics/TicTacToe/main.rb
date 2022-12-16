require_relative 'lib/game.rb'
require_relative 'lib/player.rb'
# -------------Instantiate Players and Game--------------------
puts "Player 1 Name: "
first_player_name = gets.chomp
first_player_shape = "x"
puts "Player 2 Name: "
second_player_name = gets.chomp
second_player_shape = "o"
first_player = Player.new(first_player_name, first_player_shape)
second_player = Player.new(second_player_name, second_player_shape)
game = Game.new(first_player, second_player)
#--------------Start Game----------------------
game.intro
playing = true
player_turn = "player1"
while playing
  if player_turn === "player1"
    input = game.get_player_input
    valid_move = game.is_space_free(input)
    if valid_move ? continue : break
      player_turn = "player2"
    else
      input = Game.get_player_input
      player_turn = "player1"
    end
    if input.between?(1, 9)
      ans = "test"
      puts ans
    else
      puts "tits"
    end
  end
end

