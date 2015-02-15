require_relative "prime_sieve"

require "minitest/autorun"

class TestPrimeSieve < Minitest::Test
  def setup
    @sieve = PrimeSieve.new
  end

  def test_take
    expected_primes = [2,  3,  5,  7, 11, 13, 17, 19, 23, 29]
    primes = @sieve.take(10)
    assert_equal expected_primes, primes
  end

  def test_primes_upto
    expected_primes = [2,  3,  5,  7, 11]
    primes = @sieve.upto(11)
    assert_equal expected_primes, primes
  end
end
