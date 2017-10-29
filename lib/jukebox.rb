require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  songs.each_with_index do |song, i|
    if choice == (i + 1)
      puts "Playing #{song}"
    end
  end
  # puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run

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

  until (command == "exit")
    help
    puts "Please enter a command:"
    command = gets.chomp
    case command.downcase
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
  end

end
