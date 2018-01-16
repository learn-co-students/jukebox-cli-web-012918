#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

#my_songs = {
#  "Go Go GO" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/01.mp3',
#  "LiberTeens" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
#  "Hamburg" =>  '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
#  "Guiding Light" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
#  "Wolf" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
#  "Blue" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
#  "Graduation Failed" => '/home/gilsunshine-158332/code/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
#}
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  counter = 1
  my_songs.each do |song_name, file_path|
    puts "#{counter}. #{song_name}"
    counter+=1
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  if my_songs.has_key?(selection)
    system 'open #{my_songs[selection]}'
  else
    puts "Invalid input, please try again"
  end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command = ""
  puts "Please enter a command:"
  until command == "exit"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(my_songs)
    elsif command == "play"
      play(my_songs)
    else
    end
  end
  exit_jukebox
end
