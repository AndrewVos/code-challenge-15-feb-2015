class PrimeSieve
  def take amount
    primes = upto(amount * amount)
    primes.take(amount)
  end

  def upto upper_bounds
    range      = 2..upper_bounds
    not_primes = []
    primes     = []

    range.each do |candidate|
      next if not_primes.include? candidate
      not_a_prime = candidate * 2
      while not_a_prime <= range.last do
        not_primes << not_a_prime
        not_a_prime = not_a_prime + candidate
      end
      primes << candidate unless not_primes.include?(candidate)
    end

    primes
  end
end
