require 'rest-client' #Gema instalada


response = RestClient.get('https://jsonplaceholder.typicode.com/todos/1') #Peticion a un servicio

puts response.code() #Codigo que ha mandado el servidor
puts response.body() #Respouesta de la peticion
