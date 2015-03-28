def rightmost_char(string, target)
  pos = -1
  string.each_char.with_index do |char, index|
    pos = index if char.ord == target.ord
  end
  pos
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  string, target = input.split(',')
  puts rightmost_char(string, target)
end
