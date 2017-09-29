class Author

  attr_accessor :name, :posts

  @@post_count = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.artist = self
    @@post_count += 1
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.artist = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
