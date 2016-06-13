class Torteria
  attr_accessor :ingredientes, :tiempo
  def initialize(ingredientes, tiempo)
    @ingredientes = ingredientes
    @tiempo = tiempo
  end
end

class Oven
  attr_accessor :tortas
  def initialize(tortas, time)
    @tortas = tortas.flatten
    @time = time
    @tortas
  end
  
end
