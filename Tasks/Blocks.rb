7.times do
  puts "Esto es parte de un bloque de codigo"
end
#Hace lo mismo con las llaves
7.times { puts "Esto es parte de un bloque de codigo" }
#Con parámetros
7.times do |time, nombre|
  puts "Esto es parte de un bloque #{time} perteneciente a: #{nombre}"
end

def hola
  puts "Hola desde una funcion"
  resultado = 2 + 2
  yield resultado #palabra reservada que salta al bloque de codigo
end

hola do
  puts "Hola desde nuestro bloque"
end

hola do |resultado|
  puts "El resultado de nuestra operacion es #{resultado}"
end
#-------------------------------------------------------------------------
def suma(num1, num2, &block)
  puts "Hola desde la funcion suma"
  resultado = num1 + num2
  if block_given? #pregunta si nos mandaron un bloque de codigo
    block.call resultado #o yield resultado
  else
    puts "La suma desplegada en el metodo es #{resultado}"
  end
end

suma(5,6) do |x|
  puts "La suma desplegada en el bloque es #{x}"
end
#--------------------------------------------------------------------------
a = ["a", "b", "c"]
a.each_index {|x| print x, " -- "}
#--------------------------------------------------------------------------
h = {"a" => 100, "b" => 200}
puts h
h.delete("a") #borra un elemento del arreglo
puts h
