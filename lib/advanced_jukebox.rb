#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park\01.mp3',
"LiberTeens" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/02.mp3',
"Hamburg" =>  'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/03.mp3',
"Guiding Light" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/04.mp3',
"Wolf" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/05.mp3',
"Blue" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/06.mp3',
"Graduation Failed" => 'c:\Users\cunha\.atom\.learn-ide\home\cunhasb\jukebox-cli-web-100817\jukebox-cli\audio\Emerald-Park/07.mp3'
}

require 'pry'
def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play "
  puts "- exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  i = 0
  my_songs.collect{|keys,values| puts "#{i+= 1}.\ #{keys}"}
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  song = "Invalid input, please try again"
  user_input = gets.chomp
  if my_songs.key?(user_input)
    #puts "system\(\'open #{my_songs[user_input]}\'\)"
    system ("\'start #{my_songs[user_input]}\'")
  else
     puts song
   end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  command=nil
  until command == "exit"
  puts "Please enter a command:"
  command = gets.chomp
  case  command
    when "help" then help
    when "list" then
      list(my_songs)
      help
    when "play" then
      list(my_songs)
      play(my_songs)
      help
    when "exit" then exit_jukebox
    else
      help
    end
  end
end
