class Prime
  def self.prime_numbers(size=10)
    size=10 if size < 1
    primes = []
    digit = 2
    while size > 0
      if self.prime?(digit)
        primes << digit
        digit+=1
        size-=1
      else
        digit+=1
      end
    end
    primes
  end

  def self.prime?(digit)
    return false if digit < 2
    (2..Math.sqrt(digit)).none? {|factor| digit % factor == 0}
  end

end

