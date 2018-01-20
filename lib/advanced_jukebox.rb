require 'pry'

# my_songs = {
# "Go Go GO" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/af/Development/labs/jukebox-cli-web-012918/audio/Emerald-Park/07.mp3'
# }

def help
  print <<-END_HEREDOC
      I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
  END_HEREDOC
end



def list(my_songs)
  songs = my_songs.keys
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  response = gets.chomp

  if !my_songs.keys.include?(response)
    puts "Invalid input, please try again"
  else
    song = my_songs[response]
    system "open #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  while true
    help
    puts "Please enter a command:"
    response = gets.chomp

    case response
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    end
  end

end
