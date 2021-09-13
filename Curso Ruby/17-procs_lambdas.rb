# Fundamentos de Ruby -> Procs & Lambdas

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks



#Proc -> Clase que permite tener bloques, almacenandolos en una variable

#Forma 1
def run_proc_with_random_number(proc)
	proc.call(rand(100)) #Llamar al proc para la ejecucion del bloque
end

proc= Proc.new { |number| puts "#{number}" }
run_proc_with_random_number(proc)



#Forma 2 
def run_proc_with_random_number2(&proc2) #El signo '&' indica que le esta pasando un bloque
	proc2.call(rand(100)) 
end

run_proc_with_random_number2 { |number| puts "#{number}" }



#Nota 1 -> los bloques son usados para pasar codigo a funciones
#Nota 2 -> Los procs se comportancomo bloques para ser almacenados en variables
#Nota 3 -> Lambda son procs, sin embargo se comportan como metodos


#Lambdas -> Se establece el num. de elementos a recibir

#Cede el control al bloque
def return_from_proc
	a=Proc.new { return 12}.call #Retorna el numero y no ejecuta el codigo restante
	puts 'This will never be printed'
end


#Se comporta como un metodo
def return_from_lambda
	# a = lambda {return 12}.call => definir lambda
	a = -> {return 12}.call
	puts "The lamdba returned: #{a}"
end


#puts return_from_proc()
return_from_lambda()
