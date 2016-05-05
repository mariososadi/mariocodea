def uncles_ages(array)
  even = array.collect { |x| x if x % 2 == 0 }
  odd = array.collect { |x| x if x % 2 != 0 }
  even.compact + odd.compact
end

def best_students(array)
  array.delete_if { |i| i < 8 }
end

def consecutive_age(array)
  array.each_cons(3) 
end



p uncles_ages([33, 55, 66, 32, 45, 56, 67]) == [66, 32, 56, 33,55, 45, 67]
p best_students([10, 8, 6, 5, 8, 5, 6, 8, 10, 9, 6, 5, 3, 2, 8, 8, 8, 9]) == [10, 8, 8, 8, 10, 9, 8, 8, 8, 9]

p consecutive_age([33, 55, 66,])