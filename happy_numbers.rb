def happy_number?(number)
  history = []

  until number == 1
    return false if history.include?(number)
    history << number
    number = happy_step(number)
  end

  true
end

def happy_step(number)
  digits = number.to_s.split(//).map(&:to_i)
  digits.map { |digit| digit ** 2 }.inject(:+)
end

input_lines = File.readlines ARGV[0]

input_lines.each do |number|
  if happy_number?(number) then puts 1 else puts 0 end
end
