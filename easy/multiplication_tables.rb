def multiples_table(dimension)
  Array.new(dimension) do |index1|
    Array.new(dimension) do |index2|
      (index1 + 1) * (index2 + 1)
    end
  end
end

def print_table(table)
  table.each do |row|
    puts row.map { |entry| entry.to_s.rjust(4) }.join.lstrip
  end
end

print_table(multiples_table(12))
