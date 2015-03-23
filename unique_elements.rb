def unique(array)
  array.uniq.map(&:to_i).sort.join(',')
end

input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  puts unique(line.split(',').map(&:chomp))
end
