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
  n*num
  end
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720 
