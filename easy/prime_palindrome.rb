def prime?(n)
  (3..n - 1).step(2).each do |iter|
    return false if n % iter == 0
  end

  return true
end

def find_prime_palindrome(n)
  prime_palindrome = 3

  (5..n).step(2).each do |iter|
    if prime?(iter)
      prime_palindrome = iter if iter.to_s == iter.to_s.reverse
    end
  end

  prime_palindrome
end


puts find_prime_palindrome(1000)
