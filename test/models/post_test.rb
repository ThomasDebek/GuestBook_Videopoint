require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "formats author" do
    p = Post.create(author: "John Locke", body: "Hello")
    assert_equal "John Locke", p.author
  end
end
