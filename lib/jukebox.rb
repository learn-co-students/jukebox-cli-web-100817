require 'pry'
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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play "
  puts "- exit : exits this program"
end

def list(songs)
  i=0
  songs.each {|song| puts "#{i+=1}\. #{song}"}
end

def play(songs)
  song = "Invalid input, please try again"
    user_input = gets.chomp
   if (1...10) === user_input.to_i
     song = songs[(user_input.to_i)-1]
   elsif songs.include?(user_input)
     song = user_input
   end
 puts song
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command=nil
  until command == "exit"
  puts "Please enter a command:"
  command = gets.chomp
  case  command
    when "help" then help
    when "list" then
      list(songs)
      help
    when "play" then
      list(songs)
      play(songs)
      help
    when "exit" then exit_jukebox
    else
      help
    end
  end
end



#run(songs)





#play(songs)
