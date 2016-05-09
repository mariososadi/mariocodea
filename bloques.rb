beginning_time = Time.now
def do_this_block
    yield
end

do_this_block do 
    puts 1 + 1
   puts "Fernando" * 2
 end
 end_time = Time.now 
puts (end_time - beginning_time) * 1000


beginning_time_2 = Time.now
def do_this_block_2
   puts 1+1
   puts "Fernando" * 2
end

puts do_this_block_2
end_time_2 = Time.now 
puts (end_time_2 - beginning_time_2) * 1000

