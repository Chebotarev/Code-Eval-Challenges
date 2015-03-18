def lowercase(line)
  line.downcase
end

input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  puts lowercase(line)
end
