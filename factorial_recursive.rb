def factorial_iterative(num)
  n=1
  1.upto(num.to_i) {|x| n*=x}
  n
end

# Pruebas

def factorial_recursive(num)
  if n==0
    return 1
  else
   for i in   1.upto(num.to_i) {|x| n*=x}
  n
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720 