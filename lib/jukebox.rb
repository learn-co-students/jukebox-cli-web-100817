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
  #this method should be the same as in jukebox.rb

  puts     "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end



def list(songs)
#   1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up
# 3. Sufjan Stevens - Too Much
# 4. The Naked and the Famous - Young Blood
# 5. (Far From) Home - Tiga
# 6. The Cults - Abducted
# 7. Phoenix - Consolation Prizes
# 8. Harry Chapin - Cats in the Cradle
# 9. Amos Lee - Keep It Loose, Keep It Tight
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs.each_with_index do |val, i|
    puts "#{i += 1}. #{val}"
  end
end


def play(songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
    song_choice = gets.chomp
      songs.each_with_index do |song, i|
        if song_choice == song || song_choice == (i + 1).to_s
        puts "playing #{song}"
          else
          puts "Invalid input, please try again"
          end
        end
end


def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(songs)
  help
    puts "Please enter a command:"
    command = gets.chomp
      if command == "list"
        lists(songs)
      elsif command == "play"
        play(songs)
      elsif command == "help"
        help
      else command == "exit"
      exit_jukebox
end
end



  #this method is the same as in jukebox.rb


# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)
