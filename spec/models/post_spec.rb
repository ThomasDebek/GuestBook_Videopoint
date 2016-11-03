
require 'spec_helper'




describe "format author" do
  p = Post.create(author: "john locke", body: "Hello")
  assert_equal "Jhon Locke", p.author
end