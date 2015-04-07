input_lines = File.readlines ARGV[0]
sum = 0

input_lines.each do |integer|
  sum += integer.to_i
end

puts sum
