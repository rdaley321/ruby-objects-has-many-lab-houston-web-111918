class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << title
  end
  
  def all
    @@all
  end
  
end