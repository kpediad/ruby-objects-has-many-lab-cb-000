class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all.select{|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.all
    @@all
  end

  def self.post_count
    self.all.collect{|author| author.posts}.inject(:+)
  end
end
