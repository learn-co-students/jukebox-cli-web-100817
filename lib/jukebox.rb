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
    if choice == (i + 1).to_s || choice == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command
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
    when "exit"
      puts "Goodbye"
      break
    end
  end
end
