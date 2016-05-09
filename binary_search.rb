def binary_search(num, array)
  L = 0
  R = array.size - 1
  m = (L + R) / 2

until m = array[m]
  if array[m] < num
    L = m + 1
    m = (L + R) / 2
  elsif array[m] > num
    R = m - 1
    m = (L + R) / 2

  else
    break
    return m
  end
end

p binary_search(3, [1, 2, 3, 4, 5, 6])
