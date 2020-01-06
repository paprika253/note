require 'date'

class Task < Post
  def initialize
    super

    @due_date = ''
  end

  def read_from_console
    puts "What you need to do?"
    @text = STDIN.gets.chomp

    puts "So where is your deadline?"
    puts "Write date in format DD.MM.YYYY, example: 12.05.2003"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def save
    file = File.new(file_path, "w:UTF-8")
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
    file.puts(time_string + "\n\r")

    file.puts("Сделать до #{@due_date.strftime("%Y.%m.%d")}")
    file.puts(@text)

    file.close

    puts "Task was saved!"
  end
  end