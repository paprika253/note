class Link < Post
def initialize
  super

  @url = ''
end

def read_from_console

  puts "Link:"
  @url = STDIN.gets.chomp

  puts "What about this link?"
  @text = STDIN.gets.chomp
end

def save

  file = File.new(file_path, "w:UTF-8")
  time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
  file.puts(time_string + "\n\r")

  file.puts(@url)
  file.puts(@text)

  file.close

  puts "Link was saved!"
end
end
