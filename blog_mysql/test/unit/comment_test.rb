require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "Author is required" do
     comment = Comment.new :body => "Hello, World!"
     assert !comment.valid?
  end
end
