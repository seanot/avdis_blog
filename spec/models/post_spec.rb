require 'spec_helper'

describe Post do
  before do
    @post = Post.new
  end

  it 'starts with blank attributes' do
    expect(@post.title).to be_nil
    expect(@post.body).to be_nil
  end

  it 'supports reading and writing a title' do
    @post.title = "foo"
    expect(@post.title).to eq "foo"
  end

  it 'supports reading and writing a post body' do
    @post.body = "bar"
    expect(@post.body).to eq "bar"
  end

  it 'supports reading and writing a blog reference' do
    blog = Object.new
    @post.blog = blog
    expect(@post.blog).to eq blog
  end


  describe '#publish' do
    before do
      @blog = Blog.new
      @blog.stub title: title
      @post.blog = @blog
    end

    it 'adds the post to the blog' do
      @blog.expect :add_entry, nil, [@post]
      @post.publish
    end
  end

end
