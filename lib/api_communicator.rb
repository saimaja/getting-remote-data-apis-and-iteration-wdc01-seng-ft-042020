require 'rest-client'
require 'json'
require 'pry'

# **So, the `get_character_movies_from_api` 
# method should return an array of hashes, 
# where each hash represents a movie.**



def get_character_movies_from_api(character_name)
  #make the web request
  response_string = RestClient.get('http://swapi.dev/api/people')
  response_hash = JSON.parse(response_string)
  
  results = response_hash["results"]
  
  character_array = results.find do |character| 
    character["name"].downcase == character_name
  end
  character_films = character_array["films"]
  # binding.pry
end
  

  

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


def get_films
  
end

# This array of hashes is what gets 
# passed to the `print_movies` method. 
# This is the method in which you will 
# iterate over that array of hashes to 
# `puts` out movie information to the terminal.
def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
