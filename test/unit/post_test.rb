require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without image" do
    post = Post.new
    assert !post.save
  end

  test "comments should be destroyed when post is destroyed" do
  	post = Post.last
  	post.destroy
  	assert !post.comments.nil?
  end

  test "likes should be destroyed when post is desroyed" do
  	post = Post.last
  	post.destroy
  	assert !post.likes.nil?
end
