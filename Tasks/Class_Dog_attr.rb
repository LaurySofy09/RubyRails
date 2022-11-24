class Dog

  attr_reader :raza, :edad#Ruby automáticamente crea los métodos sin necesidad de definirlos por cada uno.
  #Lee valores de los métodos, no permite modificar.
  attr_writer :genero
  #Escribe valores a los métodos, permite modificar.
  attr_accessor :color
  #Lee y escribe valores a los métodos.

  def initialize(raza, color, edad, genero)
    @raza = raza
    @color = color
    @edad = edad
    @genero = genero
  end

  #Método que asigna un parámetro a una variable de instancia.
  def color=(nuevo_color) #debe ir pegado
    @color = nuevo_color
  end

end

perro = Dog.new("Border collie", "White and black", "3 años", "macho")

puts perro.raza
puts perro.color
puts perro.edad
puts perro.genero
