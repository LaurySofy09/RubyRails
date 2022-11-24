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

  def ladrar(ladrido) #Método con parámetro
    puts "#{ladrido} #{ladrido} #{ladrido}"
  end

  def descripcion #Método sin parámetro
    puts "Soy de raza #{@raza} de color #{@color} y tengo #{@edad}"
  end

  def to_s
    "Soy un canino raza: #{@raza} de color #{@color}, tengo #{@edad} y soy #{@genero}"
  end
end
