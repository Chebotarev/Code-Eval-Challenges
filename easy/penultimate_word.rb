def get_penultimate_word string
  string.split[-2]
end

input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  puts get_penultimate_word line
end
