require "./list.rb"
require "./item.rb"

#Agregar un artículo
#Remover un artículo
#Ver todos los artículos
#Marcar un determinado artículos
#Borrar todos los artículos
#Salir de la aplicación

class ListApp
  attr_writer :lista

  def initialize
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra lista de compras"
    loop do
      puts ""
      puts "a - Agregar un artículo"
      puts "r - Remover un artículo"
      puts "v - Mostrar todos los artículos"
      puts "m - Marcar un artículo"
      puts "b - Borrar todos los artículos"
      puts "s - Salir de la aplicación"

      input = gets.chomp

      case input
        when 'a'
          puts "Inserte un item: "
          item = gets.chomp
          @list.add_item(item)
          40.times { print "*" }
          puts "\n#{item} ha sido agregado a la lista\n"
          40.times { print "*" }
        when 'r'
          puts "Inserte el index del item a eliminar: "
          index = gets.chomp
          item = @list.remove_item(index.to_i)
          40.times { print "*" }
          puts "\n#{item.text} ha sido removido" #Covierte el numero al texto
          40.times { print "*" }
        when 'v'
          puts "La lista de items es: "
          @list.show_all
        when 'm'
          puts "Inserte el index del item a checked: "
          index = gets.chomp
          index = @list.check_item(index.to_i)
          40.times { print "*" }
          puts "\n#{item.text} ha sido checked\n"
          40.times { print "*" }
        when 'b'
          puts "Deseas remover todos los artículos? s/n "
          opcion = gets.chomp
          if opcion == 's'
            @list.remove_all
          end
        when 's'
            break
        else
          puts "Operacion no reconocida"
        end
    end
    puts "Gracias por utilizar nuestra aplicación"
  end
end

list_app = ListApp.new #Inicializa método
list_app.run #Método corre
