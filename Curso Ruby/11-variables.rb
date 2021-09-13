# Fundamentos de Ruby ->  variables

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Variables locales
def basic_method
	x = 10
	puts x
end

basic_method()


#Variables globales
def basic_method_2
	puts $x # '$' Indicamos que la variable a mostrar es global
end

$x = 10 # '$' indica que trabajaremos con una variable global
basic_method_2()



#Variables de objeto
class Car
	def initialize(brand:)
		@brand=brand #Variable de instancia y es accesible por el objeto
	end

	def start()
		puts "#{@brand} starting..."
	end
end


coche = Car.new(brand: 'Ford')
coche.start()



#Variables de clase
class Car2
	
	#Metodo constructor
	def initialize(brand:)
		@brand=brand #Variable de instancia y es accesible por el objeto

		#Crear una variable de clase
		if defined?(@@number_of_cars)
			@@number_of_cars+=1 #declaracion de una variable de clase	
		else
			@@number_of_cars=1
		end
	end

	#Metodos
	def start()
		puts "#{@brand} starting..."
	end

	def self.count
		@@number_of_cars
	end

end


coche2 = Car2.new(brand: 'Tesla')
coche2.start()
puts Car2.count #Numero de objetos creados en la clase

