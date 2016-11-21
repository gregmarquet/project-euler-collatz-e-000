def even_next(n)
  n / 2
end

def odd_next(n)
  3 * n +1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  sequence = [n]
  until (sequence.last == 1)
    sequence << next_value(sequence.last)
  end
  sequence
end

def longest_collatz
  long_collatz = []
  (1...1000000).each do |num|
    if collatz(num).length > long_collatz.length
      long_collatz = collatz(num)
    end
  end
  long_collatz.first
end