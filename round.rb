require_relative "./problem"
require_relative "./player"
require_relative "./turn"
require 'pp'

class Round 
  def initialize(p1,p2)
    @round_number = 1
    @game_ongoing = true
    @p1 =p1
    @p2 =p2
    @current_player = @p1
  end

  def play
    while @game_ongoing do
        puts "------Round #{@round_number}------"

        question = Problem.new.play(@current_player.name)
 

        if question
          puts "\n Yeah, obviously. \n\n"
          else
          puts "\n What the heck? No you dummy. \n\n"
          @p1.lose_life
        end

        @round_number += 1
        puts "#{@p1.name}\'s health:" + (" ❤️" * @p1.lives) + "  #{@p2.name}\'s health:" + (" ❤️" * @p2.lives)
        
        if @p1.lives <= 0 || @p2.lives <= 0
          @game_ongoing = false
        end
        
      end 
    end
end

