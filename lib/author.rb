class Author 
  
  attr_accessor :name 
  @@post_count_total = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count_total += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    self.add_post(post)
    post.author = self
    @@post_count_total += 1
  end
  
  def self.post_count 
    @@post_count_total
  end
  
end