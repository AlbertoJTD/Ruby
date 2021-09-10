#Step 3 -> Objetos


#Creacion de clases
class Greeter
	def initialize(name="world")
		@name=name
	end

	def say_hi
		puts "Hi #{@name}!"
	end

	def say_bye
		puts "Bye #{@name}, come back soon."
	end

end

greeter=Greeter.new("Alberto") #greeter es el objeto creado
greeter.say_hi()
greeter.say_bye()


#Con esta instruccion se pueden visualizar los metodos dispobibles para el objeto creado
Greeter.instance_methods

#Si queremos usar solo los metodos definidos, se debe aplicar esta instruccion
Greeter.instance_methods(false)

#Metodos a los que responde el objeto -> greeter
puts greeter.respond_to?("name")
puts greeter.respond_to?("say_hi")
puts greeter.respond_to?("to_s")

puts ""


#Modificacion de las clases

#Acceder a las variables
class Greeter
	attr_accessor :name #Se definieron 2 nuevos metodos usando -> name
end

greeter = Greeter.new("Andy")
puts greeter.respond_to?("name")
puts greeter.respond_to?("name=")

greeter.name="Betty" #Metodo para establecer el nombre
greeter.name #Metodo para obtener el nombre
greeter.say_hi


puts "\n"

#MegaGreeter
print " -- MegaGreeter --\n"
class MegaGreeter
  attr_accessor :names

  #Crear el objeto
  def initialize(names = "World")
    @names = names
  end

  #Saludar a todos
  def say_hi
    if @names.nil? #Metodo para saber si etsa nulo @names
      puts "..."
    elsif @names.respond_to?("each")
      # @names es una lista de algun tipo

      #each se ejecuta por cada elemento de la lista
      @names.each do |name| #Si @names tiene algun valor, saludara a cada uno
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Decir adios a todos
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Unir los elementos de la lista con comas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end


# __FILE__ almacena el nombre del archivo actual y $0 es el nombre usado para inicar el programa
if __FILE__ == $0 
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Cambiar el nombre a "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Cambiar el nombre a un array de nombres
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Cambiar a nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end