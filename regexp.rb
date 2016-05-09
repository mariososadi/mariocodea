def find_acc_number?(string)
   $numbers.each { |x| p true if /#{x}/.match(string.to_s) }
end

$numbers = ["1111-111-111", "2222-222-222", "3333-333-333", "4444-444-444", "5555-555-555"]
p msj = '¿La cuenta 1111-111-111 existe en nuestro sistema?'
find_acc_number?(msj)

def find_acc_number(string)
  $numbers.each{ |x| puts x if /#{x}/ =~ string }  
end

p msj = '¿La cuenta 1111-111-111 existe en nuestro sistema?'
find_acc_number(msj)

def find_acc_numbers(string)
  p $numbers.find_all{ |x|  /#{x}/ =~ string }  
end

p msj = '¿Las cuentas 1111-111-111, 2222-222-222, 3456-789-090 existen en nuestro sistema?'
find_acc_numbers(msj)

def find_acc_numbers_X(string)
  p $numbers.find_all{ |x|  /#{x}/ =~ string }
  p  '¿Las cuentas 1111-111-111, 2222-222-222, 3456-789-090 existen en nuestro sistema?'
 end

p msj = 'Las cuentas 1111-111-111, 2222-222-222, 3456-789-090 si existen en nuestro sistema'
find_acc_numbers_X(msj)

