class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
  end

  def author_name
    if @author == nil
      return nil
    else @author.name
    end
  end


end
