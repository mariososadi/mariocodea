def linear_search(num,array)
  sum = 0
  for i in 0.upto(array.length - 1)
    search = i if array[i] == num 
    sum+=1 if array[i] == num 
    break if array[i] == num 
  end
  nil if sum == 0 
  search if sum == 1
end

def global_linear_search(obj,array)
  a = []
  sum = 0
  for i in 0.upto(array.length - 1)
    #sum += 1 if array[i] == obj
    if array[i] == obj
      a[sum] = i
      sum+=1
    end
  end
  return a
end

#Driver Code
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]

p linear_search(20, random_numbers)
# => 3
p linear_search(29, random_numbers) 
# => nil

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]