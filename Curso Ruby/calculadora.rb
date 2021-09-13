=begin
	
Este programa es una calculadora con funciones, en donde se muestra un
menu de seleccion, se escoge la operacion a realizar, se 
ingresan los valores y finalmente se muestra el resultado.
	
=end


#Variables para almacenar los numeros
num1=0
num2=0

#Variable para almecenar la opcion
opcion=0

#Flag para terminar el programa
finalizar=false



#Funciones a utilizar
def menu()
	puts " ----- CALCULADORA -----\n"
	puts "\t- MENU -
1.- Suma 
2.- Resta  
3.- Division 
4.- Multiplicacion
5.- Potencia de un numero
6.- Par o impar
7.- Salir"
print "Opcion-> "
	op=gets.chomp.to_i
	return op
end

def pedir_numeros(valor)
	
	if valor == 1
		print "\nIngresa el primer numero: "
		num1=gets.chomp.to_f
		print "Ingresa el segundo numero: "
		num2=gets.chomp.to_f
		
		#Devolver valores en un hash
		return valores={:val1 => num1,:val2 => num2}

	elsif valor == 2
		print "\nIngresa el valor de la base: "
		num1=gets.chomp.to_f
		print "Ingresa el valor del exponente: "
		num2=gets.chomp.to_f

		#Devolver valores en un hash
		return valores={:val1 => num1,:val2 => num2}
	else
		print "\nIngresa un numero: "
		num1=gets.chomp.to_f
		return valores={:val1 => num1}
	end
	
end

#Operaciones
def suma(n1,n2)
	puts "\nLa suma es: #{n1+n2}"
end

def resta(n1,n2)
	puts "\nLa resta es: #{n1-n2}"
end

def division(n1,n2)
	if n2==0
		puts "Error matematico: no se puede dividir entre 0"
	else
		puts "\nLa division es: #{n1/n2}"
	end
end

def multiplicacion(n1,n2)
	puts "\nLa multiplicacion es: #{n1*n2}"
end

def potencia_de_un_numero(base,potencia)
	puts "\nEl resultado de: #{base} ^ #{potencia} = #{base**potencia}"
end

def par_impar(n1)
	if n1.to_i.even?
		puts "El numero #{n1.to_i} es par"
	else
		puts "El numero #{n1.to_i} es impar"
	end
end


#Ejecucion del programa
while finalizar == false

	opcion=menu()

	case opcion
		when 1
			#Suma
			numeros=pedir_numeros(1)
			num1=numeros[:val1]
			num2=numeros[:val2]
			suma(num1,num2)

		when 2
			#Resta
			numeros=pedir_numeros(1)
			num1=numeros[:val1]
			num2=numeros[:val2]
			resta(num1,num2)
			
		when 3
			#Division
			numeros=pedir_numeros(1)
			num1=numeros[:val1]
			num2=numeros[:val2]
			division(num1,num2)
			
		when 4
			#Multiplicacion
			numeros=pedir_numeros(1)
			num1=numeros[:val1]
			num2=numeros[:val2]
			multiplicacion(num1,num2)

		when 5
			#Potencia
			numeros=pedir_numeros(2)
			num1=numeros[:val1]
			num2=numeros[:val2]
			potencia_de_un_numero(num1,num2)

		when 6
			# par o impar
			numero=pedir_numeros(3)
			num1=numero[:val1]
			par_impar(num1)

		when 7
			finalizar=true
		else
			puts 'Opcion no valida...'
	end
	puts ''
end

puts "Hasta la proxima..."

