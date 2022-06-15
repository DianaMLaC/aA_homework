class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1, game_over = false, seq = [])
    @sequence_length = sequence_length
    @game_over = game_over
    @seq = seq

  end

  def play
    #if game not over 
    self.take_turn
    #if game is over
    self.reset_game
    self.game_over_message
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    self.round_success_message

  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    COLORS.each {|color| @seq << color}

  end

  def round_success_message

  end

  def game_over_message
    

  end

  def reset_game


  end
end
