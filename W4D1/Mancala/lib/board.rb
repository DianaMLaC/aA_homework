class Board
  
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new}
    @player1 = Player.new(name1, side = 1)
    @player2 = Player.new(name2, side = 2)
    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    
    # @cups.each do |cup|
    #   if cup != cups[6] && cup != cups[13]
    #     4.times {|:O| cup << :O }
    #   end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 14 

  end

  def make_move(start_pos, current_player_name)
    if current_player_name == @player1
      Player.take_turn
    end
    self.next_turn(ending_cup_idx)
    
    self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0...6].all? {|cup| cup.empty?} ||  @cups[7...12].all? {|cup| cup.empty?}
      return true
    else
     false
    end
  end

  def winner
    counts = []
    if @player1.one_side_empty?
      counts << @player1_store.count
    elsif @player2.one_side_empty?
      counts << @player2_store.count
    else 
      :draw
    end
    counts.first
  end
end
