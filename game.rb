require_relative './player.rb'
require_relative './problem.rb'
require_relative './round.rb'

puts 'Player 1, what\'s your name?'
p1_name= gets.chomp
p1 = Player.new(p1_name)
puts "Yo #{p1.name}, welcome to the Math Zone."
puts 'Player 2, what\'s your name?'
p2_name= gets.chomp
p2= Player.new(p2_name)
puts "Yo #{p2.name}, let's get ready to math it up."

game =  Round.new(p1, p2)
game.play
