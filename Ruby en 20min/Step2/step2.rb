#Step 2 -> Metodos


#Definicion de un metodo
def hi #def inicia la definicion del metodo, seguido del nombre del mismo
	puts "Hello world" #cuerpo del metodo
end #end indica donde termina el metodo

hi() #Ejecutar el metodo definido



#Definicion de metodo con parametros
def hi(name)
	puts "Hello #{name}" # #{name} sirve insertar un valor dentro del string
end 

hi("Alberto") 



#Aplicar un metodo para modoficar el nombre
def hi(name)
	puts "Hello #{name.capitalize}" 
end 

hi("alberto") 




#Creacion de clases
#Una clase puede tener un sinfin de metodos
class Greeter()
	def initialize(name="world")
		@name=name
	end

	def say_hi
		puts "Hi #{@name}!"
	end

	def say_bye
		puts "Bye #{@name}initialize, come back soon."
	end

end
