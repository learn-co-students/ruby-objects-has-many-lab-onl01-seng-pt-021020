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
  end 
  
  def add_post_by_title

  def self.all
    @@all
  end
end
