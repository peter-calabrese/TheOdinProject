require_relative 'lib/game.rb'
require_relative 'lib/player.rb'
# -------------Instantiate Players and Game--------------------
puts "Player 1 Name: "
first_player_name = gets.chomp
puts "Player 1 Shape: "
first_player_shape = gets.chomp
puts "Player 2 Name: "
second_player_name = gets.chomp
puts "Player 2 Shape: "
second_player_shape = gets.chomp
first_player = Player.new(first_player_name, first_player_shape)
second_player = Player.new(second_player_name, second_player_shape)
game = Game.new(first_player, second_player)
#--------------Start Game----------------------
game.intro
playing = true
while playing
  puts "Where would you like to go?"
  input = gets
end

