def bit_positions(n, p1, p2)
  n[p1-1] == n[p2-1]
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  n, p1, p2 = input.split(',').map(&:to_i)
  puts bit_positions(n, p1, p2)
end
