module Action 

  def think
    puts "thinking..." 
  end

  def walk
    puts "walking..."
  end

  def eat
    puts "eating"
  end
end

module Emotion 

  def sad
    puts "...."
  end

  def surprised 
    puts "Wow!!"
  end

  def angry
    puts "kill you"
  end

end 

class Human 
  include Action 
  include Emotion 
end

h = Human.new
h.think
