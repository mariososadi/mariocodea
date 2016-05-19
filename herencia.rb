class Vehicle

  def what_am_i?
    "#{self.class}"
  end

  def age!
  end

  def color
  end

  def number_of_wheels
  end

end

class Motorized < Vehicle

  def has_motor
  end

  def tank_size
  end

  def refuel
  end

end

class Motorbike < Motorized
  
  def age
    "#{122}"
  end

end

class Car < Motorized
  
  def age
    "#{150}+"
  end
 
end

class Bicycle < Vehicle
 
  def initialize (num)
    @num = num
  end

  def age
    "#{200}+"
  end

  def number_of_gears
    p @num
  end

end

class Skateboard < Vehicle

  def age
    "#{58}"
  end
  
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end