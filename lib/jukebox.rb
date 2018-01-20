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
  print <<-END_HEREDOC
      I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
  END_HEREDOC
end

def list(songs_array)
  songs_array.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.chomp

  if (1..songs_array.length).include?(response.to_i)
    puts "Playing #{songs_array[response.to_i - 1]}"
  elsif songs_array.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true
    help
    puts "Please enter a command:"
    response = gets.chomp

    case response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end

end
