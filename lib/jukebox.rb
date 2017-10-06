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
  songs.each do |x|
    puts "#{songs.index(x)+1}. #{x}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  songresponse = gets.chomp
  songs.each do |x|
    if songresponse == x
      puts "Playing #{x}"
    elsif songresponse == (songs.index(x)+1).to_s
      puts "Playing #{x}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
   help
  puts "Please enter a command:"
  response = gets.chomp
loop do
  if response == "help"
     help
  elsif response == "play"
     play(songs)
  elsif response == "list"
     list(songs)
  elsif response == "exit"
     exit_jukebox
    break
  end
  break
end
end
