require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  test "body is required" do
	post = Post.new :title => "Hello world!"
	assert !post.valid?
  end
  test "name is required" do
	post = Post.new :name => "Hello world!"
	assert !post.valid?
  end
  test "name is unique" do
	post = Post.new :name => "Name 1", :content => "Blog content"
	assert !post.save
  end
  test "Title length > 0" do
	post = Post.new :name => "", :content => "Blog content"
	assert !post.valid?
  end
  test "Title length > 20" do
	post = Post.new :name => "x"*20 , :content => "Blog content"
	assert !post.valid?
  end
end
