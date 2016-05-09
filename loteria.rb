def shuffle(array)

  for i in (array.length - 1).downto(1) do
    j = rand(i)
    array[i], array[j] = array[j], array[i]
  end 
  array.join
end


# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true

