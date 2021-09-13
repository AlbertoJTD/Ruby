# Fundamentos de Ruby -> Time & Date

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks

require 'date' #Solicitar un modulo

time=Time.now #Mostrar la fecha y hora actual

puts time.sec #Mostrar segundos
puts time.min #Mostrar minutos
puts time.hour #Mostrar hora

puts time.day #Mostrar dia
puts time.month #Mostrar mes
puts time.year #Mostrar año

puts time.wday #Mostrar el dia de la semana
puts time.yday #Dia del año
puts time.isdst #Vigencia del horario del verano
puts time.zone #Zona de horario

puts Time.local(1865, 4, 9) #Año, mes, dia
puts Time.local(2100,1,1)


#Esto aplica si se tiene un S.O de 32 bits
puts DateTime.new(1865, 4, 9)
puts DateTime.new(2100,1,1)
