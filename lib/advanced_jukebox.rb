#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/ryanfarney/desktop/jukebox-cli-web-012918/audio/Emerald-Park/07.mp3'
}

def help
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each do |song, path|
  	puts song
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

	puts "Please enter a song name or number:"
	input = gets.chomp

	if my_songs.include?(input)
		puts "Playing #{input}"
		my_songs.each do |song, path|
			if song == input
				system "open <#{path}>"
			end
		end
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
	case input
		when "list"
			list(songs)
		when "play"
			play(songs)
		when "help"
			help
		when "exit"
			exit_jukebox
		end
end
