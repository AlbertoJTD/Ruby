# Fundamentos de Ruby -> herencia

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Clase padre
class Warrior
	#Creacion de getter y setters
	attr_accessor :name,:ki,:technique

	#Metodo constructor
	def initialize(name:,ki:)
		#Variables de instancia
		@name=name
		@ki=ki
	end

	#Metodos
	def make_technique(technique:)
		"Making #{technique}"
	end
end


#Clase hija
class Saiyan < Warrior #Hijo y padre
	#Creacion de getter y setters
	attr_accessor :phase


	#Metodo constructor
	#Con 'options' accedemos a los atributos de la clase padre y los atributos son encapsulados en un hash
	def initialize(phase:, **options) 
		#Variables de instancia
		super(**options)
		@phase=phase
	end


	#Metodos
	def transform_to(phase:,ki:)
		@ki=ki
		@phase=phase
		"Transform to: #{phase}"
	end
end


#Creacion de un objeto de tipo Saiyan
vegeta=Saiyan.new(
	phase:"base",
	name:"Vegeta",
	ki:3000
)


puts vegeta.make_technique(technique: 'Final Flash')
puts "La fase actual es: #{vegeta.phase()}"
puts "El ki es de: #{vegeta.ki()}"

puts vegeta.transform_to(phase: 'Ozaru',ki:10000)
puts "La fase actual es: #{vegeta.phase()}"
puts "El ki es de: #{vegeta.ki()}"