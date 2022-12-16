require_relative "lib/player"
require_relative 'lib/game'

print "Player 1's Name: "
first_player_name = gets.chomp
print "Player 2's Name: "
second_player_name = gets.chomp

first_player = Player.new(first_player_name, "x")
second_player = Player.new(second_player_name, "o")
game = Game.new
current_player = first_player
game_on = true
game.start_game(first_player, second_player)

while game_on
  print "#{current_player.name}, it's your turn! Pick a place to go (Pick a number from 1-9): "
  input = gets.chomp.to_i
  input-=1
  game.player_move(input, current_player) == "retry" ? next : ""

  current_player = game.switch_player(current_player, first_player, second_player)
end
