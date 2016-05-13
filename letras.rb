class Board

# @@boards_templates = "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
@@boards_templates = "XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"
  def initialize
    @board = @@boards_templates.split('')
  end

  def to_s
    complete_board!.join
  end 

  def board_vertical

    vertical = to_s.scan(/.{5}/)          
    vertical.map!{|x| x.split('')}
    vertical.transpose.flatten.join
                      
  end

  def board_diagonal

    diagonal = to_s.scan(/.{5}/)          
    diagonal.map!{|x| x.split('')}

    padding = diagonal.size - 1
    padded_matrix = []

    diagonal.each do |row|
      inverse_padding = diagonal.size - padding
      padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
      padding -= 1    
    end

  padded_matrix.transpose.map(&:compact).flatten.join                     
  end

  def board_diagonal_inv

    diagonal_inv = to_s.scan(/.{5}/)          
    diagonal_inv.map!{|x| x.split('')}
    diagonal_inv.map!{|x| x.reverse}

    padding = diagonal_inv.size - 1
    padded_matrix_inv = []

    diagonal_inv.each do |x|
      inverse_padding = diagonal_inv.size - padding
      padded_matrix_inv << ([nil] * inverse_padding) + x + ([nil] * padding)
      padding -= 1    
    end

  padded_matrix_inv.transpose.map(&:compact).flatten.join                     
  end

  def include?(word)
    if /#{word}/.match(to_s) 
      print true 
    elsif  /#{word}/.match(to_s.reverse)
      print true
    elsif /#{word}/.match(board_vertical) 
      print true
    elsif /#{word}/.match(board_vertical.reverse) 
      print true
    elsif /#{word}/.match(board_diagonal) 
      print true
    elsif /#{word}/.match(board_diagonal.reverse) 
      print true
    elsif /#{word}/.match(board_diagonal_inv) 
      print true
    elsif /#{word}/.match(board_diagonal_inv.reverse) 
      print true
    else  
      print false
    end

  end

   # Este método sólo sirve para hacer una representación "bonita" del tablero en la terminal
  def board
    repr = to_s.scan(/.{5}/)          
    repr.map!{|x| x.split('')}         
     for i in 0..7                    
      puts                            
          for j in 0..4                
            print "#{repr[i][j]}  "   
          end                         
     end
     puts " "                         
  end
  # Fin del método de representación

  private

  def complete_board!
    @board.collect!{|x| x == "X" ? x = ('A'..'Z').to_a[ rand(26) ] : x }
  end
end

board = Board.new
puts board.board
# puts board.include?("POEMA")
# puts board.include?("CANCION")
# puts board.include?("RONDAS")
# puts board.include?("RIMAS")
puts board.include?("MANGO")
puts board.include?("SANDIA")
puts board.include?("MELON")
puts board.include?("PLATANO")

