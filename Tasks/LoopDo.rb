loop do
  print "Quieres continuar la partida? s/n "
  respuesta = gets.chomp #Funcion que da salto de linea
  if respuesta != "s"
    break
  end
  puts "Continuar"
end
