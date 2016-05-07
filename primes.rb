def prime_array(int)
  array = (2..int).to_a
  array.select!{|x| (2..x-1).select{|i| x % i == 0 }.count == 0}
end

def prime_factors(int)
  array = prime_array(int)
  a=[]
  
  array.each do |x|
	(int).times {
	  if int.to_i % x.to_i == 0 
	    a << x
	    int = int / x
	  else 
	  	break
	  end
		}
	
  end
  return a
end


p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]