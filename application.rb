require_relative "prime_sieve"
require_relative "table_drawer"

def draw_prime_table
  primes = PrimeSieve.new.take 10
  table = primes.map do |a|
    primes.map do |b|
      a * b
    end
  end
  primes.unshift("")
  table = table.each_with_index.map do |row,index|
    row.unshift(primes[index + 1])
  end
  table.unshift(primes)
  puts TableDrawer.draw_table table
end

draw_prime_table
