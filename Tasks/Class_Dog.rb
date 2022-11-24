class Dog

  def initialize(raza,color,edad)
    @raza = raza
    @color = color
    @edad = edad
  end

  def raza
    @raza
  end

  def color
    @color
  end

  def edad
    @edad
  end
end

perro = Dog.new("Border collie", "White and black", "3 años")

puts perro.raza
puts perro.color
puts perro.edad
