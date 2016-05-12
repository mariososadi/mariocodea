# def gato_board
#   gato = Array.new(3){Array.new(3,"O")}
#   gato.each do |x|
#      r=rand(2)
#      x[r] = "X"
#     end
#   for i in 0..2
#     puts  
#       for j in 0..2
#         print "#{gato[i][j]}  "
#       end
#   end
#   puts " "
# end

# 4.times {gato_board}

def gato_board_elbueno
  gato = Array.new(3){Array.new(3,"O")}
  ini = rand(3)
  x_ini= rand(3)
  gato[ini][x_ini] = "X"

  case ini
    when 0 
      gato[1].map!{|x| x = "X"}
      gato[2].map!{|x| x = "X"}
      r = rand(3)
      gato[1][r] = "O"
      r = rand(3)
      gato[2][r] = "O"

    when 1 
      gato[0].map!{|x| x = "X"}
      gato[2].map!{|x| x = "X"}
      r = rand(3)
      gato[0][r] = "O"
      r = rand(3)
      gato[2][r] = "O"

    when 2 
      gato[0].map!{|x| x = "X"}
      gato[1].map!{|x| x = "X"}
      r = rand(3)
      gato[0][r] = "O"
      r = rand(3)
      gato[1][r] = "O"
   
  end
  # for i in 0..2
  #    puts  
  #      for j in 0..2
  #        print "#{gato[i][j]}  "
  #      end
  #  end

return gato
end

#Pruebas
sum_x=0
sum_o=0
test = gato_board_elbueno
test.each {|x| x.each{|y| sum_x+=1 if y.include?("X")}}
test.each {|x| x.each{|y| sum_o+=1 if y.include?("O")}}
p sum_x == 5
p sum_o == 4








