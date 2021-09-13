# Fundamentos de Ruby -> Bloques

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


#Bloque 1 -> Usar llaves solo si se trata de una linea
[1,2,3].each { |i| puts i} 


#Bloque 2 -> Usar los delimitadores 'do' y 'end' cuando el bloque sea grande
[1,2,3].each do |i| 
	if i % 2 == 0
		puts "#{i} es par"
	else
		puts "#{i} es impar"
	end
end


#Bloque
class PDFReporter
	def generate
		puts 'Generando reporte...'

		#Identificar si se esta recibiendo un bloque
		if block_given?
			yield #Ejecutar un bloque que usara una funcion
		end

	end
end

reporte = PDFReporter.new()
reporte.generate {puts 'Reporte del dia'}




#Bloque
class PDFReporter2
	def generate(title,month)
		puts "Generando reporte #{title}"

		#Identificar si se esta recibiendo un bloque
		if block_given?
			yield month #Ejecutar un bloque que usara una funcion
		end
		
	end
end

reporte2 = PDFReporter2.new()
reporte2.generate('Mensual','Septiembre') do |month|
	puts "Reporte de #{month}"
end

