def factorial_iterative(num)
  n=1
  1.upto(num.to_i) {|x| n*=x}
  return n
end



def factorial_recursive(num)
  if num <= 1
    n = 1
  else
   n = 1
    for i in 1.upto(num.to_i - 1) do
      n*=num.to_i - 1
    end
  return n*num
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
