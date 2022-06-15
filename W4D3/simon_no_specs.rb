require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
      self.sequence_length += 1
      round_success_message
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color.red if color == "red"
      puts color.blue if color == "blue"
      puts color.green if color == "green"
      puts color.yellow if color == "yellow"
      sleep 1
      system "clear"
    end
  end

  def require_sequence
    puts "return each color one by one in the exact order it was shown"
    guess = []
    idx = 0
    sequence_length.times do
      user_input = gets.chomp
      guess << user_input
      return game_over_message if guess[idx] != seq[idx]
      idx += 1
    end
  end

  def add_random_color
    color = COLORS.sample
    seq << color
  end

  def round_success_message
    puts "Round Successful"
  end

  def game_over_message
    self.game_over = true
    puts "You Lost"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

game = Simon.new
game.play