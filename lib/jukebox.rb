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

def make_songs_hash(songs) #works as intended
    song_hash = {}
    songs.each_with_index do |song, idx|
        song_hash[idx + 1] = song
        end
    song_hash
end


def help #working
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end




#the method below was printing the wrong result, despite testing in the terminal and finding the results were working. I spotted someone else implement the hashing of an array in an attempt to search both an indexed search, or a direct value search, so i implemented the revised #play method below, that works quite well since the songs HASH has both a numbered key, and a song title value, both of which are searchable with .each


=begin
 def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if input.to_i < songs.size
        puts "Playing #{songs[input.to_i - 1]}"
    elsif input.class == String && songs[songs.index(input)] == input
        puts "Playing #{songs[songs.index(input)]}"
    else
        puts "Invalid input, please try again"
        play(songs)
    end
=end

#a counter might work to implement an auto-play, i.e. playing until the total number of songs has played, and when the counter hits 9 have #exit_jukebox run to stop playing.
def play(songs) #working
    songs = make_songs_hash(songs) #by making a hash of the array, we can directly search for both the track number OR the full song title.
    puts "Please enter a song name or number:"
    user_input = gets.chomp
    songs.each do |track, song|
        if user_input.to_i == track
            puts "Playing #{song}"
        elsif user_input == song
            puts "Playing #{song}"
        else
            puts "Invalid input, please try again"
            end
        end
        
        end


def list(arr) #working
    arr.each_with_index do |song, idx|
        puts "#{idx + 1}. #{song}"
    end
end

def exit_jukebox #working
    puts "Goodbye"
end

def run(songs) #working
    help
    puts "Please enter a command:"
    input = gets.chomp
    until input == "exit"
        case input
        when input == "list"
            list(songs)
        when input == "play"
            play(songs)
        when input == "help"
            help
        end
        
        break
        end
    exit_jukebox
end
        
    
    
    
        
