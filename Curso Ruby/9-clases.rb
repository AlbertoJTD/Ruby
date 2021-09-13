# Fundamentos de Ruby -> clases

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Creacion de una clase -> Forma 1
class Person

	#Creacion de macros para getter y setters-> Forma 2
	#attr_reader :name -> Getter
	#attr_writer :name,:age -> Setter

	#Creacion de getter y setters -> Forma 3
	attr_accessor :name,:age

	# ---- Metodo constructor
	def initialize(name:,age:)
		#Variables de instancia
		@name=name
		@age=age
	end

=begin
	# ---- Getters -> Forma 1
	def name
		@name
	end

	def age
		@age
	end

	# ---- Setters
	def name=(name)
		@name=name
	end

	def age=(age)
		@age=age
	end
=end

	# ---- Metodos
	def greet()
		"Hola!!, soy #{@name}"
	end

end


persona=Person.new(name:'Alberto',age:21) #Crear un objeto de tipo Person
puts persona.greet()
puts persona.name()




#Creacion de una clase usando una estructura, brinda getters y setters -> Forma 2
puts "\n"
Person2 = Struct.new(:name,:age) do
	def greet()
		"Hola mundo!!, soy #{name} y tengo #{age}..."
	end
end

persona2=Person2.new("Alberto",21)
puts persona2.name()
puts persona2.age()
puts persona2.greet()