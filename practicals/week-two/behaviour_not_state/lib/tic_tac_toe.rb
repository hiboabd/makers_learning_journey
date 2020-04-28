=begin
Testing behaviour rather than state, and why you should care

Two questions to consider

  1. Who or what is the user of this code? It might be the end user (a real person), or it might be another class
  2. What job is this code doing for that user?

=end

class Board
  attr_reader :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    count = 0
    board.each do |block|
      count += 1
      if count % 3 == 0
        puts "#{block}" + "\n" + '-------------'
      else
        print "#{block} " + " | "
      end
    end
  end

  def add_turn(position)
    @board[position] = " X"
    display_board
  end
end
