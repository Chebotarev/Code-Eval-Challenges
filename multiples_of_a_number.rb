def get_smallest_multiple(x, n)

  counter = 0

  until n >= x
    counter += 1
    n *= counter
  end

  n
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  x,n = input.split(',')
  puts get_smallest_multiple(x.to_i, n.to_i)
end
