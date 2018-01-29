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
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list songs
counter = 0
songs.each_with_index { |value, index|
  puts  "#{index+1} #{value}"}

end

def play songs
puts "Please enter a song name or number:"
answer = gets.chomp
songs.each_with_index do |song, number|
if answer.to_i == number + 1 || answer == song
  puts "Playing #{song}"
  return song
end
end
puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end


def run songs
help
reply = ""
puts "Please enter a command:"

until reply == "exit"
  reply = gets.chomp
if reply == "help"
  help
elsif reply == "list"
  list(my_songs)
elsif reply == "play"
  play(my_songs)
else
end
end
exit_jukebox
end
