require File.join(File.dirname(__FILE__), "prime_sieve")

def draw_table table
  maximum_item_width = table.max do |a,b|
    a.max <=> b.max
  end.max.to_s.length

  table.each do |row|
    line = row.map do |i|
      if i == 0
        "".ljust(maximum_item_width)
      else
        i.to_s.ljust(maximum_item_width)
      end
    end.join(" | ")
    line = "| #{line} |"
    puts line
  end
end

def draw_prime_table
  primes = PrimeSieve.new.take 10
  table = primes.map do |a|
    primes.map do |b|
      a * b
    end
  end
  primes.unshift(0)
  table = table.each_with_index.map do |row,index|
    row.unshift(primes[index + 1])
  end
  table.unshift(primes)
  draw_table table
end

draw_prime_table
