def reverse_words(line)
  puts line.split.reverse.join(" ")
end

lines = File.readlines ARGV[0]

lines.each do |line|
  reverse_words(line)
end
