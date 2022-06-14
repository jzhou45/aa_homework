class Board
  attr_accessor :cups

  STORE_CUPS = [6, 13]

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }

    (0...@cups.length).each do |idx| 
      @cups[idx] = place_stones if !STORE_CUPS.include?(idx)
    end

    @player1 = name1
    @player2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    [:stone, :stone, :stone, :stone]
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise "Starting cup is empty" if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
      stones = @cups[start_pos].length
      @cups[start_pos] = []
      current_idx = start_pos

      skip_idx = 0
      side = []
      if current_player_name == @player1
        skip_idx = STORE_CUPS[1]
        side = [7, 8, 9, 10, 11, 12]
      else
        skip_idx = STORE_CUPS[0]
        side =  [0, 1, 2, 3, 4, 5]
      end

      until stones == 0
        current_idx += 1
        current_idx = side[0] if current_idx > side[-1]

        @cups[current_idx] << :stone
        stones -= 1
      end
      render
    end


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
    if @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
      return true
    end
    false
  end

  def winner
    return :draw if !one_side_empty?
    if @cups[0..5].all? { |cup| cup.empty? }
      return @player2
    else
      return @player1
    end
  end

end
