def bit_positions(n, p1, p2)
  n_binary_array = n.to_s(2).reverse.split()
  n_binary_array[p1-1] == n_binary_array[p2-1]
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  n, p1, p2 = input.split(',').map(&:to_i)
  puts bit_positions(n, p1, p2)
end
