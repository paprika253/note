class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Введите ссылку:"
    @url = STDIN.gets.chomp

    puts "Что это за ссылка?"
    @text = STDIN.gets.chomp


  end

  def to_strings
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")

    return [@url, @text, time_string]
  end

end