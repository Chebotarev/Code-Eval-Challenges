def set_intersect(set1, set2)
  intersect = []

  set1.each do |element|
    intersect << element if set2.include?(element)
  end

  intersect
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
  set1, set2 = input.split(';').map do |list|
    list.split(',').map(&:to_i)
  end

  puts set_intersect(set1, set2).join(',')
end
