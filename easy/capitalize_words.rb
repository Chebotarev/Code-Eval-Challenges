def capitalize string
  cap_words = []

  string.split.each do |word|
    word[0] = word[0].upcase
    cap_words << word
  end

  cap_words.join(' ')

end

input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  puts capitalize line
end
