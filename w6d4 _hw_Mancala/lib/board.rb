class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @player1 = name1
    @player2 = name2

    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i| 
      4.times { cup << :stone } unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !start_pos.between?(0, 13)
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    selected_cup = @cups[start_pos] 
    
    i = 0
    until selected_cup.empty?
      next_pos = (start_pos + i + 1) % 13

      if current_player_name == @player1
        @cups[next_pos] << selected_cup.pop unless next_pos == 13
      else
        @cups[next_pos] << selected_cup.pop unless next_pos == 6
      end
      i += 1
    end
    render
    
    if current_player_name == @player1 && next_pos == 6
      :switch
    elsif current_player_name == @player2 && next_pos == 13
      :switch
    elsif @cups[next_pos].empty?
      :switch
    end
    next_turn(next_pos)

  end
  
  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

    # if @cups[ending_cup_idx].empty?
    #   return :switch
    # else
    #   return :prompt
    # end
    ending_cup_idx
  
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?

  end

  def winner
  end
end


# b = Board.new("jane", "jack")
# puts b.render
# puts b.cups[0]