num_array = [1,2,3,4,5]

num_array.each do |num|
  puts num
end

contacts_hash = {"Aldo" => 12345, "Pedro" => 6789, "Ana" => 5525}

contacts_hash.each do |key, value|
  puts "La llave es #{key} y el valor es #{value}"
end

#Tambien se puede usar solo llaves
contacts_hash.each {|key, value|
  puts "La llave es #{key} y el valor es #{value}"}

  contacts_hash.each_key do |key|
    puts "La llave es #{key}"
  end

  contacts_hash.each_value do |value|
    puts "La llave es #{value}"
  end

  "Aldo".each_char do |chr|
    puts chr #imprime cada caracter en una linea
  end
