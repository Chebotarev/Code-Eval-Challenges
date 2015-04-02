def max_beauty(string)
  letter_counts = []
  max_score = 0
  highest_score = 26

  string.downcase!.gsub!(/[^a-z]/, '')
  str_array = string.split(//)

  str_array.uniq.each do |unique_letter|
    letter_counts << str_array.count(unique_letter)
  end

  letter_counts.sort.reverse.each do |count|
    max_score += highest_score * count
    highest_score -= 1
  end

  max_score
end

input_lines = File.readlines ARGV[0]

input_lines.each do |line|
  p max_beauty(line)
end
