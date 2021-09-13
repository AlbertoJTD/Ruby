#Gemas a utilizar

require 'minitest/autorun'
require './19-minitest.rb'
require 'json'

class TestRestClient < MiniTest::Test
	#Metodo para hacer la configuracion de pruebas
	def setup
		#Esta es una instancia
		@client = MyRestClient.new() 
	end

	#Test para generar una peticion
	def test_get_todo
		response = @client.get('https://jsonplaceholder.typicode.com/todos/1')
		payload = JSON.parse(response) #Convierte la cadena es un hash

		#200 -> estatus de http
		assert_equal 200, response.code

		#Verifica que el atributo 'id' == 1
		assert_equal 1,payload['id']
	end


end