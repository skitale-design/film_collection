class Film

  attr_reader :director, :title, :year

  def initialize(path)
    @path = path
    @director = nil
    @title = nil
    @year = nil
    read_from_file
  end

  def read_from_file
    if File.exist?(@path)
      file = File.new(@path, "r:UTF-8")
      test_arr = file.readlines
      @title = test_arr[0].chomp
      @director = test_arr[1].chomp
      @year = test_arr[2].chomp
    end
  end

  def director
    @director
  end

  def title
    @title
  end

  def year
    @year
  end

end
