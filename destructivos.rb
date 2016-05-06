def reject_normal(array)
  $array.reject {|x| x % 2 == 0}
end

def reject_bang(array)
  $array = $array.reject {|x| x % 2 == 0}
end

# Driver Code

$array = (1..25).to_a

puts "Así se ve el array : #{$array}" 

puts "Resultado del método no destructivo : #{reject_normal($array)}"  
puts "Valor del array con el método no destructivo (como te darás cuenta, no cambió): #{$array}" 

puts "Ahora, le aplicamos el método destructivo: #{reject_bang($array)}" 
puts "Ya valió todo porque ahora el array ya es diferente :( : #{$array}" 

  