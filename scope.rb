$global_var = "This is a global variable"
CONSTANT = 3.1416 

  def global_var
    $global_var
  end

  def global_var=(value)
    $global_var = value
  end

  def CONSTANT
    CONSTANT
  end

  # def CONSTANT=(value)
  #    CONSTANT = value
  # end

p global_var
p CONSTANT

global_var = "this is you"

p global_var


class DummyClass

  def global_var
    $global_var
  end

  def global_var=(value)
    $global_var = value
  end

  def CONSTANT
    CONSTANT
  end

  # def CONSTANT=(value)
  #    CONSTANT = value
  # end
#   @@class_variable = "This is a class variable"
  
#   def initialize 
#     local_var = "this is my local var"
#     @instance_var = local_var
#   end

#   # Este es un getter
#   def instance_var
#     @instance_var
#   end

# # Este es un setter
#   def instance_var=(value)
#     @instance_var = value
#   end

#   def class_variable
#     @@class_variable
#   end

#   def class_variable=(value)
#     @@class_variable = value
#   end

end

# dummy_class = DummyClass.new

# p dummy_class.instance_var=("Bar")
# p dummy_class.instance_var   =    "Baz"

# dummy_1= DummyClass.new


# dummy_2 = DummyClass.new

# p dummy_1.class_variable
# p dummy_2.class_variable

# dummy_1.class_variable = "New value for the class variable"


# p dummy_1.class_variable
# p dummy_2.class_variable

dummy_1 = DummyClass.new

p dummy_1.global_var
p dummy_1.CONSTANT

dummy_1.global_var = "This is me"
p dummy_1.global_var

# global_var = "this is you"

# p global_var