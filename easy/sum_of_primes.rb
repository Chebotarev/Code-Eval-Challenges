class Integer
  def prime?
    return false if self <= 1
    return true if self == 2

    (2..self - 1).each do |iter|
      return false if self % iter == 0
    end

    return true
  end
end

def sum_primes(n)
  primes = []
  counter = 0

  until primes.length == n
    counter += 1
    next unless counter.prime?
    primes.push(counter)
  end

  primes.inject(:+)
end

puts sum_primes(1000)
