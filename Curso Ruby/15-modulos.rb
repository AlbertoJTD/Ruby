# Fundamentos de Ruby -> Modulos

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Modulos -> Estructuras para recopilar estructuras clases, metodos o constantes

require './number_stuff.rb'  #Importacion de archivos
require './letter_stuff.rb'

puts NumberStuff.random()
puts LetterStuff.random()



#Mix-in -> Incluir modulos a una clase
module UsefulFeatures
	def class_name
		self.class.to_s
	end
end

module AnotherStuff
	def do_stuff
		return 'This is a test'
	end
end

class Person
	include UsefulFeatures #Incluir las funcionalidades del modulo
	include AnotherStuff
end

alberto = Person.new()
puts alberto.class_name()
puts alberto.do_stuff()
