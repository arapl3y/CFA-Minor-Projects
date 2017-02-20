class Person
  # A person has ...
  def initialize(name)
    @name = name
  end
  attr_accessor :name
end

class Actor < Person
  # An actor has ...
  def initialize(name, acting_style)
    super(name)
    @acting_style = acting_style
  end
  attr_accessor :acting_style

  def acted_in
    # Some method that returns all the movies that is directed by this director.
  end
end

class Director < Person
    def initialize(name)
      super(name)
    end

    def filmography
      # Some method that returns all the movies that is directed by this director.
    end
end

class Junior_Director < Director
  def initialize; end
end

class Movie
  def initialize(title, description, actors, director)
    @title = title
    @description = description
    @actors = actors
    @director = director
  end

  attr_accessor :title, :description, :actors, :director

  def self.all
    ObjectSpace.each_object(self).to_a
  end


  def self.search_movie
    puts "Please enter a search term"
    search_term = gets.chomp.downcase
    ObjectSpace.each_object(self).to_a.each do |movie|
      if movie.title.downcase.include? search_term
        puts "Movie found: \n #{movie.title} \n #{movie.description}"
      end
    end
  end
end



leo = Actor.new("Leo", "bad")
wallice = Director.new("wallice")
superbad4 = Movie.new("Superbad4", "Superbad 4 description", [leo, leo], wallice)
superbad3 = Movie.new("Superbad3", "Superbad 3 description", leo, wallice)
blade_runner = Movie.new("Blade Runner", "Blade Runner description", leo, wallice)

Movie.search_movie





# search_term = gets.chomp
# Movie.select {|movie| movie.match(/^search_term/)}
