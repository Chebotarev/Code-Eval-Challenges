class QueryBoard
  MATRIX_SIZE = 256

  attr_accessor :ops

  def initialize
    @ops = []
  end

  def SetRow i, x
    @ops << { row: [i, x] }
  end

  def SetCol j, x
    @ops << { col: [j, x] }
  end

  def QueryRow i
    puts query :row, i
  end

  def QueryCol j
    puts query :col, j
  end

  private

    def query orientation, n
      sum = 0
      used = []

      @ops.reverse.each do |op|
        perp = (orientation == :row) ? op[:col] : op[:row]

        if parallel = op[orientation]
          if parallel[0] == n
            return sum += parallel[1] * (MATRIX_SIZE - used.length)
          end
        elsif !used.include?(perp[0])
          sum += perp[1]
          used << perp[0]
        end
      end

      sum
    end
end


board = QueryBoard.new
input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  method, *args = line.chomp.split
  board.send method, *args.map(&:to_i)
end
