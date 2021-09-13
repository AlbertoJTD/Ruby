# Fundamentos de Ruby -> ciclo while

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Ciclo while
number = 1
while number <= 10
	puts number
	number+=1
end


#Times -> forma 1
100.times do |i| #Indicar el numero de veces a iterar
	puts i
end

#Times -> forma 2
100.times {|i| puts i}


#Metodo each
(10..15).each do |i| #Especificar un rango de valores para su iteracion
	puts i
end


#hash -> elemento - clave => valor
data={:name => "Alberto", :age => 21}

data.each do |key,value|
	puts "clave: #{key} y valor: #{value}"
end
