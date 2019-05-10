class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    if game_over
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    correct_answer = @seq.map { |color| color[0] }.join(" ")
    round_success_message if require_sequence == correct_answer
    if !@game_over
      round_success_message
      @sequence_length += 1
      game_over_message
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    "What was the sequence?"
    player_response = gets.chomp
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Great job!"
  end

  def game_over_message
    @game_over = true
    puts "Game is over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
