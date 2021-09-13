# Fundamentos de Ruby -> condicionales

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


=begin

 ---- Operadores ----
== igual
!= distinto
> mayor
>= mayor o igual
< menor
<= menor o igual

-- Estructura ----
if condicion
	bloque a ejecutar

=end

#Nota -> cadenas deben ser definidad con comillas simples ''
# 	  -> al concatenar cadenas usar comillas dobles ""

#Estructura if
is_authenticated=false
if is_authenticated == true
	puts 'Redirect to dashboard'
else
	puts 'Redirect to login'
end


#Estructura case
role = :user #Que significan los 2 puntos que le anteceden al valor??
puts role

case role
when :user
	puts 'Welcome'
else
	puts 'Error'
end


#Estructura unless -> se ejecuta cuando no se cumple la condicion establecida
username='Alberto'
unless username == 'Juan'
	puts "Usuario incorrecto #{username}"
end