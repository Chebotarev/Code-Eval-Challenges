def sum_of_digits(num)
  sum = 0
  num.to_s.split(//).each do |digit|
    sum += digit.to_i
  end
  sum
end

input_lines = File.readlines ARGV[0]

input_lines.each do |num|
  puts sum_of_digits(num)
end
