# codeshare url: https://codeshare.io/5vwlqD

require 'catpix'
require 'tzinfo'

class Traveller
  def initialize(name, budget)
    @name = name
    @budget = budget
  end

  attr_accessor :budget
end

class Destination
  def initialize(location, cost, image)
    @location = location
    @cost = cost
    @image = image
  end

  attr_accessor :name, :cost, :image

end

class Agency < Destination
  def initialize(questions)
    @questions = []
  end

  attr_accessor :questions

  def ask(questions)

  end

  def show_info(location, weather, time, currency)

  end

  def show_image(size, location)

  end
end
