# Fundamentos de Ruby -> Metodos de clase vs Metodos de instancia

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


class Space
	#Se puede utilizar llamando a la clase directamente
	def self.test_method
		puts 'Hello from the space class'
	end

	#Se debe instanciar un objeto para acceder al metodo
	def test_method
		puts 'Hello from an instance of space class'
	end

end


#Metodo de clase
Space.test_method()


#Metodo de instancia
Space.new.test_method()

prueba = Space.new()
prueba.test_method()