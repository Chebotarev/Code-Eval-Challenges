def armstrong_number?(number)
  number_array = number.to_s.split(//).map(&:to_i)
  armstrong_array = number_array.map { |digit| digit ** number_array.length }

  if armstrong_array.inject(:+) == number then "True" else "False" end
end

input_lines = File.readlines ARGV[0]

input_lines.each do |inputs|
  puts armstrong_number?(inputs.to_i)
end
