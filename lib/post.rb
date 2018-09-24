class Post
  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name
  end
end
