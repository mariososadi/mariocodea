def binary_search(num, array)
  l = 0
  r = array.size - 1 
  m = (l + r) / 2

until m = array[m]
  if array[m] < num
    l = m + 1
    m = (l + r) / 2
  elsif array[m] > num
    r = m - 1
    m = (l + r) / 2

  else
    break
    return m
  end
end
end

p binary_search(3, [1, 2, 3, 4, 5, 6])
