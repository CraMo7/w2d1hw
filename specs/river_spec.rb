require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

# I wrote the river tests and the River class itself side-by-side, as it was very hard to get my head around the logic of creating it. I referred to the class notes example of the Bank object specs which contains BankAccount objects to help write the river specs

class TestRiver < MiniTest::Test
  def setup
    fish1 = Fish.new("Nemo", "Clownfish")
    fish2 = Fish.new("Jaws", "Shark")
    fish3 = Fish.new("Billy 'Big Mouth' Bass", "Bass")

    fishes = [fish1, fish2, fish3]

    @river = River.new(fishes)
  end

  def test_contains_array_of_fish
    assert_equal(Fish, @river.list[0].class)
  end

end  