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

    def query orient, n
      sum = 0
      used = []
      orient == :row ? not_orient = :col : not_orient = :row

      @ops.reverse.each do |op|

        if op.has_key?(orient)
          if op[orient][0] == n
            return sum += op[orient][1] * (MATRIX_SIZE - used.length)
          end
        elsif !used.include?(op[not_orient][0])
          sum += op[not_orient][1]
          used << op[not_orient][0]
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
