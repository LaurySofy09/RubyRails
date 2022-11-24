class Item
  attr_writer :checked
  attr_accessor :text

  def initialize(text="")
    @text = text
    @checked = false
  end

  def to_s
    if @checked
      "[x] " + @text
    else
      "[ ] " + @text
    end
end

end

#Para crear una nueva instancia que no está registrada en la librería de Ruby
#se debe colocar la instrucción:
#require "./el nombre del archivo .rb"
