def welcome
  # puts out a welcome message here!
  puts "Welcome to our Star Wars API!"
  puts "please enter a character name"
end

def get_character_from_user
  
  # use gets to capture the user's input. This method should return that input, downcased.
  input = gets.chomp
  input_downcase = input.downcase 
  if input_downcase.strip.empty?
    puts "You must enter a search term"
    input = get_character_from_user
  end 
  return input_downcase 
end

