def chess_board
  chess = Array.new(8) {Array.new(8," ")}
  piezas = "T C A Rey R A C T"
  peones = "P"
  chess[0] = piezas.split(" ").collect{ |x| "#{x}-b"}
  chess[7] = piezas.split(" ").collect{ |x| "#{x}-n"}
  chess[1].collect!{|x| "#{peones}-b"}
  chess[6].collect!{|x| "#{peones}-n"}
   for i in 0..7
    puts
          for j in 0..7
            print "#{chess[i][j]}\t"
          end
  end
end

p chess_board