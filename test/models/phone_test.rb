require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end




  test "Dupa wolowa" do
    p = Phone.create(name: "alan", title: "kowalski")
    assert_equal "alan kowalski", p.name + " " + p.title
  end

  test "Piko w oko" do
    p = Phone.create(name: "cipek", title: "madkowski")
    assert_equal "cipek madkowski", p.name + " " + p.title
  end

end


