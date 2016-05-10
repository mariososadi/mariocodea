def binary_search(num, array)
  l = 0
  r = array.size - 1 
  m = (l + r) / 2

until m == array[m]
  if array[m] < num
    l = m + 1
    m = (l + r) / 2
  elsif array[m] > num
    r = m - 1
    m = (l + r) / 2
  end
end
return m
end

p binary_search(1, [1, 2, 3, 4, 5, 6]) == 0
p binary_search(2, [1, 2, 3, 4, 5, 6]) == 1
p binary_search(3, [1, 2, 3, 4, 5, 6]) == 2
p binary_search(4, [1, 2, 3, 4, 5, 6]) == 3
p binary_search(5, [1, 2, 3, 4, 5, 6]) == 4
p binary_search(6, [1, 2, 3, 4, 5, 6]) == 5

