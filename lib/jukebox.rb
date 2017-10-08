songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each_with_index do |name, index|
    puts "#{index+1}. #{name}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  input = gets.chomp
  output_song = ""
  my_songs.each_with_index do |name, index|
    if input == name || (index+1).to_s == input
      output_song = name
    end
  end
  if output_song != ""
    puts "Playing #{output_song}"
  else puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  running = true
  until running == false
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when exit
      exit_jukebox
      running = false
    end
  end
end
