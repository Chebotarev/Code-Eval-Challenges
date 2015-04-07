def self_describing?(num)
  num_array = num.split(//)

  num_array.each_with_index do |value, index|
    return 0 unless value.to_i == num_array.count(index.to_s)
  end

  1
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
    puts self_describing?(input)
end
