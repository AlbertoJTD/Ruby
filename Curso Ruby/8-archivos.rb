# Fundamentos de Ruby -> archivos

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Creacion de archivos
data = {:name => 'Alberto', :age => 21, :superhero => 'Spider-man'}
File.open('data.txt', 'w') do |file|
	data.each{|key,value|
		file.write("#{key}:#{value}\n") #Escribir un archivo
	}
end

#Lectura de archivos
File.open('data.txt') do |file|
	puts file.read
end
