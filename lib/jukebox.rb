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

def list (songs)
  songs.each_with_index { |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  song_output = ''
  songs.each_with_index { |song, index|
    if song_choice == song
      song_output += "Playing #{song}"
      break
    elsif song_choice == "#{index + 1}"
      song_output += "Playing #{song}"
      break
    end
  }
  if song_output != ''
    puts song_output
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts 'Please enter a command:'
  user_command = gets.chomp
  until user_command != 'exit'
    if user_command == 'exit'
      exit_jukebox
    elsif user_command == 'list'
      list(songs)
      puts 'Please enter a command:'
      user_command = gets.chomp
    elsif user_command == 'play'
      play(songs)
      puts 'Please enter a command:'
      user_command = gets.chomp
    elsif user_command == 'help'
      help
      puts 'Please enter a command:'
      user_command = gets.chomp
    end
  end
end
