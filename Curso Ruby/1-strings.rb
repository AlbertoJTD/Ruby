# Fundamentos de Ruby -> Strings

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks

print "Hello world" #No tiene saltos de linea
puts "Hello world" #Al final agrega un salto de linea


string = "My first string" #Objeto de tipo string

puts string.length #Conocer la longitud de la cadena, numero de caracteres, bytes.


puts string.count('f') #Conocer cuantas veces se repite un caracter


=begin
	Extraer cadenas:
	Se especican 2 parametros	
	1.- Posicion en donde se desea iniciar
	2.- Numero de caracteres a extraer	
=end
puts string.slice(3,5) #Generar subcadenas



#Cadenas mutables -> pueden cambiar su contenido sin anterar el valor del objeto original
puts string.upcase #Convierte la cadena a mayusculas
puts string #El valor de la variable se mantiene intacto

#Metodos peligrosos -> Modifican el valor del objeto
puts string.upcase! # Con '!' se usa un metodo peligroso
puts string #Ahora el valor de string ha sido modificado


#Cadenas vacias
#El signo '?' proporcina mayor información, aplica para metodos que retornan: true || false
puts string.empty? 

puts string.include? 'MY' #Conocer si en la cadena se encuentran los caracteres indicados