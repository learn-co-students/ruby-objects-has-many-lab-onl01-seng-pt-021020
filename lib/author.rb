class Author 
  post_count = 0 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(post)
    @post.push(post) 
  end 
  
  def add_post_by_title
  end 
  
  def self.post_count
  end 
  
end 