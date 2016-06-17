# CLASES
#---------------------------------------------------------------------------------------------------------------------------#

#Clase CreditCard
class CreditCard

  attr_accessor :name, :number, :expiration, :cvc, :status, :card, :cards

  def initialize(name:, number:, expiration:, cvc:, status:)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status

  end

  def array
    $cards << self
  end

end
 
#Cinco instancias de CreditCard
  $cards = []
  card = CreditCard.new(name: "Amex", number: 2345673444, expiration: "12/15", cvc: 2345, status: [234, 567, 456, 567, 344])
    card.array
  card = CreditCard.new(name: "ScotiaBank", number: 2345673744, expiration: "12/16", cvc: 2845, status: [234, 345, 456, 567, 344])
    card.array
  card = CreditCard.new(name: "Bancomer", number: 2345673444, expiration: "12/15", cvc: 2645, status: [234, 345, 456, 567, 344])
    card.array
  card = CreditCard.new(name: "Serfin", number: 2345473454, expiration: "12/20", cvc: 1345, status: [234, 345, 456, 567, 344])
    card.array
  card = CreditCard.new(name: "BanCoppel", number: 2345373464, expiration: "12/18", cvc: 2445, status: [567, 345, 456, 567, 344])
    card.array

#Array con cinco objetos de tarjetas de crédito

  # $cards.each do |card|
  #   p card
  #   end

#tests 

  # $cards.each do |card|
  #    puts "#{card.name} responds to:"
  #    puts "\tName: #{card.respond_to?(:name) == true}"
  #    puts "\tNumber: #{card.respond_to?(:number) == true}"
  #    puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
  #    puts "\tcvc: #{card.respond_to?(:cvc) == true}"
  #    puts "\tGet status: #{card.respond_to?(:status) == true}"
  #    puts "\tSet status: #{card.respond_to?(:status=) == true}"
  #    puts "\n\n"
  # end

#método para mostrar datos de tarjetas


    $cards.each do |card|
     puts "Datos de tarjeta:"
     puts "#{card.name}"
     puts "\tName: #{card.name}"
     puts "\tNumber: #{card.number}"
     puts "\tExpiration: #{card.expiration}"
     puts "\tcvc: #{card.cvc}"
     puts "\tStatus: #{card.status}"
     puts "\n"
   end


# Tabla con datos de tarjetas

# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   

##------------------------------------------------------------------------------------------------------------------------##
##------------------------------------------------------------------------------------------------------------------------##

# HERENCIA
#-------------------------------------------------------------------------------------------------------------------------#

#Athlete class
class Athlete

  attr_accessor :total_time, :total_distance
  attr_reader :speed, :speed_record, :run, :swim, :ride_bike

  def initialize(total_time, total_distance)
    @total_time = total_time
    @total_distance = total_distance
  end

  #método para validar tiempo
  ...

  #método para hacer ejercicio
  ...

  #método para obtener velocidad del atleta
  def speed
    if @total_distance == 0 
      speed = 0
    else
      speed = @total_distance.to_f / @total_time.to_f
    end
  end

end

class Runner < Athlete

  def run
    return "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end

end

class Swimmer < Athlete

end

class Cyclist < Athlete

end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
