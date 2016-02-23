require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestBear < MiniTest::Test
  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")
    # @bear2 = Bear.new("Iceberg", "Polar")
    # @bear3 = Bear.new("Shadow", "Black")

    # the rest of setup is just for River, for test_eat only
    fish1 = Fish.new("Nemo", "Clownfish")
    fish2 = Fish.new("Jaws", "Shark")
    fish3 = Fish.new("Billy 'Big Mouth' Bass", "Bass")

    fishes = [fish1, fish2, fish3]

    @river = River.new(fishes)
  end

  def test_can_roar
    assert_equal("Roar!", @bear1.roar)
  end

  def test_has_type
    assert_equal("Grizzly", @bear1.kind)
  end

  def test_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_has_belly
    assert_equal(Array, @bear1.belly.class)
  end

  #I had this final test in a separate specs file that required all 3 class files, but decided to just put it here and require all 3 classes for this test file instead.
  def test_eat
    fish_before = @river.fish.length
    fish_target = @river.fish[@river.fish.length-1].name
    @bear1.eat_from(@river)
    fish_after = @river.fish.length
    assert_equal(1, fish_before - fish_after)#checks 1 fish has been removed from river
    assert_equal(fish_target, @bear1.belly[@bear1.belly.length-1])#checks bear's belly contains the fish that it should have eaten from the river
  end
  #bear.tummy returns an array of fish the bear has eaten.
  #river.fish returns an array of the fish in the river

end  