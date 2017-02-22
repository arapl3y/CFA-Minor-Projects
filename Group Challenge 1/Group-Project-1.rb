# Trentr - #1 Trenting App in the App store
require 'catpix'
require 'tzinfo'
require 'open_weather'
require 'colorize'
require 'IO/console'

class People
  def initialize(name, origin, description)
    @name = name
    @origin = origin
    @description = description
  end
  attr_accessor :name, :origin, :description

end # END PEOPLE CLASS


class Destination
  def initialize(name, image, place, time)
    @name = name
    @image = image
    @place = place
    @time = time
  end
  attr_accessor :name, :image, :place, :time
end # END DESTINATION CLASS


class Agency
  def initialize(questions, person_list)
    @questions = questions
    @person_list = person_list
  end
  attr_accessor :questions, :person_list
  system('clear')
  5.times do
  print "\u{1f60d} \u{1F618} "
  end
  puts "\n"
  puts 'Welcome to Trentr!'.colorize(:light_red)
  5.times do
  print "\u{1f60d} \u{1F618} "
  end
  puts "\n\n"
  Catpix.print_image 'trentr.jpg',
                     limit_x: 0.7,
                     limit_y: 0.7,
                     center_x: false,
                     center_y: false,
                     bg: nil,
                     bg_fill: false,
                     resolution: 'high'
  puts "\n\n"

  def ask
    puts @questions
    input = STDIN.getch
    case input
    when '1'
      show_info(@person_list[0])
    when '2'
      show_info(@person_list[1])
    when '3'
      show_info(@person_list[2])
    when '4'
      show_info(@person_list[3])
    when '5'
      show_info(@person_list[4])
    end
  end
  def show_image(destination)
    Catpix.print_image destination,
                       limit_x: 0.7,
                       limit_y: 0.7,
                       center_x: false,
                       center_y: false,
                       bg: nil,
                       bg_fill: true,
                       resolution: 'high'
    puts "\n\n"
  end
  def show_time(destination)
    tz = TZInfo::Timezone.get(destination.time)
    tz_string = tz.now.to_s
    puts "The current time in #{destination.name} is #{tz_string[11..19]}".colorize(:light_red)
  end

  def show_weather(destination)
  options = { units: 'metric', APPID: 'c1ce9d512a69e69adeb90b4a243590a9' }
  data = OpenWeather::Current.city(destination.name.to_s, options)

  puts "The current temperature is #{data['main']['temp']}, and the weather is #{data['weather'][0]['main']}".colorize(:light_red)
  end

  def show_info(person)
    destination = person.origin
    puts "This is #{person.name} from #{destination.name}, #{destination.place}".colorize(:light_red)
    show_image(destination.image)
    puts "#{person.name}"
    show_time(destination)
    show_weather(destination)
    puts %q{
      Have you...
      1) Found love?
      2) See other options
      }
    answer = STDIN.getch

    if answer == "2"
      system 'clear'
      ask
    else
      show_image('match.png')
      puts "Congratulations, you've found a match with #{person.name}"
    end
  end
end # END AGENCY CLASS

question_list = [
  '1) Rio?',
  '2) Paris?',
  '3) New York?',
  '4) Sydney?',
  '5) London?'
]

london = Destination.new('London', 'london.png', 'England', 'Europe/London')
paris = Destination.new('Paris', 'paris.jpg', 'France', 'Europe/Paris')
new_york = Destination.new('New York', 'newyorkcity.jpg', 'The United States', 'America/New_York')
sydney = Destination.new('Sydney', 'sydney.jpg', 'Australia', 'Australia/Sydney')
rio = Destination.new('Rio de Janeiro', 'riodejaneiro.jpg', 'Brazil', 'America/Sao_Paulo')

trent_upon_avon = People.new("Trent Upon Avon", london, "Chap")
trenoir = People.new("Trenoir", paris, "Bonjour")
donald_trent = People.new("Donald Trent", new_york, "WRONG")
trent_mate = People.new("Just bloody Trent", sydney, "Gday")
trenaldo = People.new("Trenaldo", rio, "gol")

person_list = [
  trenaldo,
  trenoir,
  donald_trent,
  trent_mate,
  trent_upon_avon
]

agent = Agency.new(question_list, person_list)
puts 'Hello there, you look lonely, what\'s your name? '.colorize(:light_red)
name = gets.chomp
puts "Great #{name}! Welcome to Trentr, what best describes your perfect date? ".colorize(:light_red)
agent.ask
