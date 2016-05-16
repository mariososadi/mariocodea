def find_acc_number?(string)
   $numbers.each { |x| p true if /#{x}/.match(string.to_s) }
end

$numbers = ["1111-111-111", "2222-222-222", "3333-333-333", "4444-444-444", "5555-555-555"]
p msj = '¿La cuenta 1111-111-111 existe en nuestro sistema?'
find_acc_number?(msj)
puts ""

def find_acc_number(string)
  $numbers.each{ |x| puts "Si, la cuenta #{x} existe en nuestro sistema" if /#{x}/ =~ string }  
end

p msj = '¿La cuenta 1111-111-111 existe en nuestro sistema?'
find_acc_number(msj)
puts ""

def find_acc_numbers(string)
  a = $numbers.find_all{ |x|  /#{x}/ =~ string }
  puts  "Las siguientes cuentas existen en nuestro sistema:"
  a.each{|x| puts x}  
end

p msj = '¿Las cuentas 1111-111-111, 2222-222-222, 3456-789-090 existen en nuestro sistema?'
find_acc_numbers(msj)
puts ""

def find_acc_numbers_X(string)
  a = $numbers.find_all{ |x|  /#{x}/ =~ string }
  a.each{ |x| x[0..7] = "XXXX-XXX"}
  puts  "Las siguientes cuentas existen en nuestro sistema:"
  a.each{|x| puts x} 


end

p msj = 'Las cuentas 1111-111-111, 2222-222-222, 3456-789-090 si existen en nuestro sistema'
find_acc_numbers_X(msj)
puts ""

def find_acc_format(string)
  string.gsub!(/[.]/, "")
  if string.size < 10
  puts "Este es el número de cuenta que ingresaste #{string}, y tiene menos de 10 dígitos"
  elsif string.size > 10
  puts "Lo sentimos, este es el número de cuenta que ingresaste #{string} y tiene más de 10 dígitos"
  else
  string.insert 4, "-"
  string.insert 8, "-"
  puts "Tu número de cuenta es: #{string}"
  a = $numbers.find_all{ |x|  /#{x}/ =~ string }
    if a.empty?
      puts "Tú número de cuenta no se encuentra en nuestra base de datos"
    else
      puts "Tú número de cuenta si se encuentra en nuestra base de datos:"
      puts "#{a.join}"
    end
  end
end

p 'Por favor, ingresa tu número de cuenta de 10 dígitos:'
num = gets.chomp
find_acc_format(num)