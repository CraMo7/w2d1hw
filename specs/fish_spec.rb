require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test
  def setup
    @fish = Fish.new("Nemo", "Clownfish")  

  end

  def test_has_name
    assert_equal("Nemo", @fish.name)
  end

  def test_has_type
    assert_equal("Clownfish", @fish.kind)
  end
end  