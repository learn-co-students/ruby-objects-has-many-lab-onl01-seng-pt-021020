class Author
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def self.post_count
    Post.all.length
  end
  
  def posts
    Post.all.select {|post_| post_.author == self}
  end
  
  def add_post(post_)
    post_.author = self
  end
  
  def add_post_by_title(title)
    post_ = Post.new(title)
    post_.author = self
  end
  
end