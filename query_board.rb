class QueryBoard
  attr_accessor :matrix

  def initialize
    @matrix = Array.new(256, Array.new(256, 0))
  end

  def SetRow i, x
    @matrix[i].map! { |entry| entry = x }
  end

  def SetCol j, x
    col_as_row { SetRow j, x }
  end

  def QueryRow i
    puts @matrix[i].inject(:+)
  end

  def QueryCol j
    col_as_row { QueryRow j }
  end

  private

    def col_as_row &block
      @matrix = @matrix.transpose
      yield
      @matrix = @matrix.transpose
    end
end


board = QueryBoard.new
input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  method, *args = line.chomp.split
  board.send method, *args.map(&:to_i)
end
