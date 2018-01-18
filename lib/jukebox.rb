

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
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(playlist)
  playlist.each_with_index do |song, index|
    index +=1
    puts "#{index}. #{song}"
  end
end

def play(playlist)
  num = playlist.length
  range = (1..num).to_a
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if playlist.include?(song_name)
    puts "Playing #{song_name}"
  elsif range.include?(song_name.to_i)
    song = playlist[song_name.to_i - 1]
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
    help
    puts "Please enter a command:"
    command = gets.chomp
    loop do
      if command == "help"
        run(playlist)
        break if command == "exit"
      elsif command == "list"
        list(playlist)
        run(playlist)
        break if command == "exit"
      elsif command == "play"
        play(playlist)
        run(playlist)
        break if command == "exit"
      end
      break
    end
    exit_jukebox
end
