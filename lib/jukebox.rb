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

def play(songs)
  puts "Please enter a song name or number:"
  song_name_or_num = gets.chomp
  if songs.include?(song_name_or_num)
    puts "Playing #{song_name_or_num}"
  elsif song_name_or_num.to_i >= 1 && song_name_or_num.to_i <= songs.length
    puts "Playing #{songs[song_name_or_num.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each.with_index do |value, index|
    puts "#{index + 1}: #{value}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.strip
  if user_command == "exit"
    exit_jukebox
  end
  until user_command == "exit"
    case user_command
    when "list"
      list(songs)
      user_command = gets.strip
    when "play"
      play(songs)
      user_command = gets.strip
    when "help"
      help
      user_command = gets.strip
    when "exit"
      exit_jukebox
    end
  end
end
