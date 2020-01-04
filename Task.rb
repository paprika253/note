require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что сделать?"

    @text = STDIN.gets.chomp

    puts "К какому числу это сделать? Укажите дату в формате ДД,ММ.ГГГГ"

    input = STDIN.gets.chomp


    @due_date = Date.parse(input)

  end

  def to_strings
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, @due_date]

  end
end