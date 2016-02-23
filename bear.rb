class Bear

  attr_accessor(:belly)
  attr_reader(:name, :kind)

  def initialize(name, kind)
    @name = name
    @kind = kind
    @belly = Array.new
    #I used @belly rather than "food" as mentioned in the instructions file as the inscrutions called for both but as far as I can work out they serve the same purpose and both names in the instructions refer to the same intended property of the Bear class 
  end

  def roar()
    return "Roar!"
  end

  # I used the more easily typed method name "eat_from" rather than "take_fish_from" as listed in the inscructions file. I wanted to call it "eat" but the fact that it takes as a parameter the river, not the fish itself (as I imagine the bear eats the first fish it finds, or the "last", as suggested by the reference to .pop in the instructions)
  def eat_from(river)
    @belly.push(river.fish_eaten.name)
  end






#end of class
end