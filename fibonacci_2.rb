def fibonacci_iterative(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    a = [ 1, 1 ]
    3.upto(n) { |x| a << a[ x - 2 ] + a[ x - 3 ] }
    a.last
  end
end

def fibonacci_recursive(n, cache=[])
return  n  if n<=1
  cache[n] ||= fibonacci_recursive( n - 1, cache) + fibonacci_recursive(n-2, cache)
end

def fib(n)
  new, old = 1, 0
  n.times {new, old = new + old, new}
  old
end

# Pruebas

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(6) == 8

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(6) == 8

require 'benchmark'

puts Benchmark.measure { 1000.times {fibonacci_iterative(8)}}
puts Benchmark.measure { 1000.times {fibonacci_recursive(8)}}
puts Benchmark.measure { 1000.times {fib(8)}}
