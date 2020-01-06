require_relative 'note.rb'
require_relative 'memo.rb'
require_relative 'link.rb'
require_relative 'task.rb'

puts "Hello, I`m your notepad"

puts "What you want to write here?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = gets.chomp.to_i
end

entry = Post.create(choice)


entry.read_from_console

entry.save

puts "Saved!"