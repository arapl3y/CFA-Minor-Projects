require './progress-bar-component'


class Questioner
  def initialize(questions)
    @questions = questions
  end

  attr_accessor :questions

  def ask(progress_bar)
    answers = []

    @questions.each do |question|
      system("clear")
      puts "#{progress_bar.title}: #{progress_bar.current_step}"
      puts question
      answer = gets.chomp
      answers << answer
      progress_bar.current_step += 1
    end

    puts "Thanks you for answering my questions, you answered with:"
    answers.each do |answer|
      puts answer
    end
  end
end

question_list = [
  "What's your name?",
  "What's your nationality?",
  "Do you like Trump?",
  "Why is Trent so much like Trent?"
]

my_questioner = Questioner.new(question_list)
progress_bar = ProgressBar.new("Question Progress")

my_questioner.ask(progress_bar)
