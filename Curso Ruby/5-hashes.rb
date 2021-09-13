# Fundamentos de Ruby -> Hashes

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Arrays asociativos -> Definicion de un hash
data = {"age" => 21,"name" => "Alberto"} #Forma 1
puts data

styles={:font_size => 10, :font_family => "Roboto"} #Forma 2


#Acceder al valor por su indice -> para mostrar el contenido se debe buscar tal cual se ha definido
puts data["age"]
puts styles[:font_size]


browsers = Hash.new #Instanciar un objeto de tipo hash -> hash vacio
browsers["name"] = "Chrome" #Agregar un elemento al hash
puts browsers


#Asignar un valor por defecto cuando no exista una clave
puts browsers[:data]
browsers.default = "Not found"
puts browsers[:data]

puts browsers
