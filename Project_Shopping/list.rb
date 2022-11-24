require "./item.rb"
class List
  attr_writer :items

  def initialize() #inicializador
    @items = Array.new()
  end

  def add_item(text) #Método que agrega un texto
    item = Item.new(text)
    @items.push(item) #método con inserta desde abajo
  end

  def remove_item(index) #Método que remueve index
    @items.delete_at(index)
  end

    def check_item(index) #Método que cambia el status checked
      @items[index].checked = true
      @items[index] #Regresa el item que fue marcado porque cuando no hay return se toma la última linea de codigo
    end

    def remove_all #Método que remueve todo
      @items.clear
    end

    def show_all
      if @items.length == 0
        puts "No hay articulos en tu lista de compras"
      else
        @items.each_index do |index| #Se utiliza el each_index que funciona con el index
          puts index.to_s + " - " + @items[index].to_s
      end
    end

  end
end

#1.irb
#2.require "./list.rb" accede a una nueva lista
#3.list = List.new  crea una nueva lista vacia
