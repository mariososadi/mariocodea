# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
 string.reverse.swapcase.gsub(/[aeio]/,"*")
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def words_longer_than(array)
   array.select{ |w| w.length > 3 }
end
 
def letter_per_word(array)
   array.map{ |w| w.count("e") }
end

def max_letter_frequency_per_word(sentence)
  array = sentence.split(' ')
  array = words_longer_than(array)
  array = letter_per_word(array)
  array.max
end



# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
