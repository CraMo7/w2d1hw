class River < Array

  #gets/sets
  attr_accessor(:fish)
  def initialize(fishes)
    @fish = fishes
  end
  #inconsistent naming is for clarity

  def fish_eaten
    eaten = @fish.pop
    return eaten
  end


#end of class
end