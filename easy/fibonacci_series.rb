def fibonacci_number(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci_number(n-1) + fibonacci_number(n-2)
  end
end

input_lines = File.readlines ARGV[0]

input_lines.each do |n|
  puts fibonacci_number(n.to_i)
end
