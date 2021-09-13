# Fundamentos de Ruby -> Polimorfismo

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


class Animal

	#Getter y setters
	attr_accessor :name

	#Metodo constructor
	def initialize(name)
		@name=name
	end

end


class Cat < Animal

	def talk()
		'Miauu ^-^'
	end

end


class Dog < Animal

	def talk
		'Woof! :3'
	end

end


puppy=Dog.new('Puppy')
canelo=Cat.new('Canelo')

puts puppy.talk()
puts canelo.talk()




