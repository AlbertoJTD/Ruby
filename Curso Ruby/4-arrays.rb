# Fundamentos de Ruby -> Arrays

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks

array = [1,"two",3.0,false] #Los arreglos pueden almacenar cualquier valor
array = %w{a b c d e f g h i} #Arreglo de strings

array = Array.new #Instanciar un objeto de tipo array
Array.new(3) #Definicion de tamaño
Array.new(3,"hola") #Llenado del arreglo


array = %w{a b c d e f g h i}
puts array[5] #Imprimir el valor del indice colocado


#Recopilar un conjunto de valores
#1.- Indicar el indice donde debe comenzar
#2.- Numero de elementos a recopilar

puts array[1,5] #Forma 1
puts array[1..5] #Forma 2

#Recuperar indices a la inversa -> ultimo elemento tiene la posicion -1
puts array[-1]


#Metodos para los arreglos
puts array.at(2) #Mostrar el valor de la posicion indicada
puts array.first #Obtener el primer elemento del arreglo
puts array.last #Obtener el ultimo elemento del arreglo
puts array.take(3) #Obtener los primeros 3 elementos
puts array.drop(2) #Indicar el numero de elementos a eliminar -> comenzando por el primero de la lista


browser=["Chrome","Edge","Firefox", "Safari"]
puts browser.length #Numero de elementos
puts browser.count #Numero de elementos
puts browser.empty? #Identificar si esta vacio
puts browser.include?("Chrome") #Saber si el elemento se encuentra en la lista


#Agregar un elemento a la lista -> Insersion al final de la lista
puts browser.push("Brave") #Forma 1
puts browser << "Explorer" #Forma 2

puts browser.unshift("Chromium") #Insertar al inicio de la lista
puts browser.insert(2,"Onion","Opera") #Insertar despues del indice indicado

#Eliminar elementos
puts browser.pop #Elimina el ultimo elemento y retorna el elemento eliminado
puts browser.shift #Eliminar el primer elemento y retorna el elemento eliminado
puts browser.delete_at(1) #Eliminar el elemento a traves de su indice
puts browser.delete("Firefox") #Eliminar elementoa traves de su nombre

#Mostrar elemento sin repeticiones
puts browser.push("Brave","Chrome","Firefox","Firefox")
puts browser.uniq #Mostrar valores unicos, sin repeticiones

#Uso de metodos peligrosos -> modificacion del arreglo
puts browser.uniq! #Mostrar valores unicos, sin repeticiones
