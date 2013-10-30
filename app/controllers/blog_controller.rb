class BlogController < ApplicationController
  def index
    @blog = Blog.new
    post1 = @blog.new_post
    post1.title = 'Paint just applied'
    post1.body = "Paint just applied. It's a lovely orangy-purple"
    post1.publish
    post2 = @blog.new_post(title: "Still Wet")
    post2.body = "Paint is still wet. No bubbling yet"
    post2.publish
  end
end
