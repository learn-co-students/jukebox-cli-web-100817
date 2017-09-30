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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  puts "
  1. Phoenix - 1901
  2. Tokyo Police Club - Wait Up
  3. Sufjan Stevens - Too Much
  4. The Naked and the Famous - Young Blood
  5. (Far From) Home - Tiga
  6. The Cults - Abducted
  7. Phoenix - Consolation Prizes
  8. Harry Chapin - Cats in the Cradle
  9. Amos Lee - Keep It Loose, Keep It Tight"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include? (response)
    puts "Playing #{response}"
  elsif response == "1" || response == "2" || response == "3" || response == "4" || response == "5" || response == "6" || response == "7" || response == "8" || response == "9"
    number = response.to_i
    puts "Playing #{songs[number - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp
  if answer == exit
    return exit_jukebox
  end

  while answer != "exit"
    if answer == "list"
      list
    elsif
      answer == "play"
      play
    elsif
      answer == "help"
    elsif answer == "exit"
      exit_jukebox
    end



  end

end
