def to_dec(hex)
  dec = 0

  hex.chomp.reverse.split(//).each_with_index do |hex_char, index|
    hex_char = hex_char.hex
    dec += (16 ** index) * hex_char.to_i
  end

  dec
end

input_lines = File.readlines ARGV[0]

input_lines.each do |inputs|
  puts to_dec(inputs)
end
