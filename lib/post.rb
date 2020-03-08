class Post 
 attr_accessor :title, :author 

  @@all = []

  def initialize(title)
    @title = title
  
    @@all << self
  end
  
  def author_name
    if self.author 
      self.author.name
    else
      nil
    end
  end
  
  def add_post(post)
    @post << post 
    post.author = self 
  end 
  
  def add_post_by_title(title, author)
    post = Post.new(title, author)
    add_post(post)
  end 

  def self.all
    @@all
  end
end
