def factorial_iterative(num)
  n = 1
  1.upto(num.to_i) {|x| n*=x}
  return n
end

def factorial_recursive(num)
  return 1 if num == 0
  num -= 1
  x = num * (num+1)
  num -= 1
    if num <= 1
      return x 
    else
      x*=factorial_recursive(num)
    end
end

p factorial_iterative(5) == 120
p factorial_iterative(4) == 24
p factorial_iterative(0) == 1
p factorial_iterative(1) == 1
p factorial_iterative(6) == 720 

p factorial_recursive(5) == 120
p factorial_recursive(4) == 24
p factorial_recursive(0) == 1
p factorial_recursive(1) == 1
p factorial_recursive(6) == 720
