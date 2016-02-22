require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test


  def test_can_roar
    assert_equal(bear1.roar, "Roar!")
  end

  def test_has_type
    assert_equal(bear1.kind,"Grizzly")
  end

  def test_has_name
    assert_equal(bear1.name, "Yogi")
  end

  def test_has_tummy
    assert_equal(bear1.tummy.class, Array)
    
  end

  def test_take_fish
    bear1.fish(fish1)
    assert_equal()
  end


end  