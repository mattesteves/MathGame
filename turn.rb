class Turn 
  def initialize(current_player, p1, p2)
    @current_player = current_player
    @p1 = p1
    @p2 =p2
  end

  def change
    if @current_player == @p1
      @p2 
    else
     @p1
    end
  end
end
  