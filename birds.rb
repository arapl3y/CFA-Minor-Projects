# showing basic class inheritance

class Bird
  def initialize; end

  def fly
    puts "I'm flying!"
  end
end

# Parrot class inherits from Bird class
class Parrot < Bird
  def initialize; end
end

class Penguin < Bird
  def initialize; end

  def fly
    puts "I can't fly"
  end
end

pineapple = Bird.new.fly
