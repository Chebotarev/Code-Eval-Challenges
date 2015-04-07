def fizz_buzz(input)
  x, y, n = input.split(' ').map { |char| char.to_i }

  final_numbers = [1]

  (2..n).each do |num|
    final_numbers.push(get_fb_strings(x, y, num))
  end

   final_numbers.join(' ')
end

def get_fb_strings(x, y, num)
  if num % x == 0
    if num % y == 0
      "FB"
    else
      "F"
    end
  else
    if num % y == 0
      "B"
    else
      num
    end
  end
end

input_lines = File.readlines ARGV[0]

input_lines.each do |input|
    puts fizz_buzz(input)
end
