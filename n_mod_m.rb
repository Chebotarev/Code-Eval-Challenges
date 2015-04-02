def mod n, m
  factor = n / m
  n - factor * m
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  n, m = input.split(',').map(&:to_i)
  puts mod(n,m)
end
