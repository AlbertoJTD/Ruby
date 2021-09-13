# Fundamentos de Ruby -> Mini test

#Link del curso: https://www.youtube.com/watch?v=fvrphRoN7P0&list=PL954bYq0HsCUG5_LbfZ54YltPinPSPOks


require 'rest-client' #Gema instalada

class MyRestClient
	def get(url)
		RestClient.get(url)
	end

end