def get_smallest_multiple(x, n)

  counter = 0

  while true
    counter += 1
    multiple = n * counter
    return multiple if multiple >= x
  end

end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  x,n = input.split(',')
  puts get_smallest_multiple(x.to_i, n.to_i)
end
