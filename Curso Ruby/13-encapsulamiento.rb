# Fundamentos de Ruby -> Encapsulamiento

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Declaración de la clase Person
class Person
	# -- Metodo constructor
	def initialize(name:)
		set_name(name:name)
	end

	# -- Metodos publicos
	def username()
		"Nombre: #{@first_name}, Apellido: #{@last_name}"
	end


	# -- Metodos privados
	private
	def set_name(name:)
		#Split sirve para separar una cadena
		first_name,last_name = name.split(/\s+/) # '\s' es un espacio en blanco, '+' significa 1 o mas
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(first_name)
		@first_name=first_name
	end

	def set_last_name(last_name)
		@last_name=last_name
	end

end

alberto=Person.new(name:'Alberto Tepale')
# alberto.set_last_name('Diagas') => Al ser un metodo privado no puedo utilizarlo
puts alberto.username()




#Declaracion de la clase Space

class Space

	# -- Metodo publico
	def a_public_method()
		"Are you alive? #{a_protected_method}"
	end


	# -- Metodos protegidos
	protected
	def a_protected_method()
		"Yes, I'm here.. :3"
	end

end


space = Space.new()
# space.a_protected_method() => No se puede accederal metodo protegido, puesto que actua como uno privado
puts space.a_public_method()
