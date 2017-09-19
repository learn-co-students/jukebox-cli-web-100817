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

def list(arr = songs)
  arr.each_index do |num|
    puts "#{num}. #{arr[num]}"
  end
end

def play(arr = songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i.to_s == input && (0..arr.size).include?(input.to_i-1)
    puts "Playing #{arr.at(input.to_i-1)}"
  elsif arr.include?(input)
    puts "#{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input = "exit"
    if input == "list"
      list(songs)
      input = gets.chomp
    elsif input == "play"
      play(songs)
      input = gets.chomp
    elsif input == "help"
      help
      input = gets.chomp
    end
  end
    exit
end
