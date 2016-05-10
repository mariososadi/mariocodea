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

def fibonacci_recursive(n)
 
  if n == 0
  	return fib_n = 0
  elsif n == 1
  	return fib_1 = 1
  else
  	fib_n = 0
  	fib_1 = 1
    a = [ 1, 1 ]
    3.upto(n) { |x| a << a[ x - 2 ] + a[ x - 3 ] }
    a.last
  end
end


# Pruebas

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

 p fibonacci_recursive(0) == 0
 p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5

