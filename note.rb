class Post

  def initialize

    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #todo
  end

  def to_strings
    #todo
  end


  def save

    file = File.new(file_path, "w: UTF-8")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    filename = @created_at.strftime("#{self.class.name}")__original__load__IRB_use_loader__.txt")

     return current_path + "/" + file_name
  end


end