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
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def list(songs)
  songs.each_with_index do |title, index|
    puts "#{index + 1}. #{title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  songs.each_with_index do |title, index|
    if response == title || response.to_i == index + 1
      puts "Playing #{title}"
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
    case response
    when "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    when "list"
      list(songs)
      puts "Please enter a command:"
      response = gets.chomp
    when "play"
      play(songs)
      puts "Please enter a command:"
      response = gets.chomp
    when "exit"
      exit_jukebox
      break
    end
  end
end
