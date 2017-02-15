
def initialise
  puts "Please enter the first number"
  @num1 = gets.chomp.to_i

  puts "Please enter the second number"
  @num2 = gets.chomp.to_i

  puts "Do you want to +, -, *, / or exit?"
  @reply = gets.chomp.downcase
end


def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def forty_two(answer)
  if answer == 42
    puts "You have discovered the answer to the Ultimate Question of Life, the Universe, and Everything"
  end
end

while true
  initialise
  if @reply == "+"
    answer = add(@num1, @num2)
  elsif @reply == "-"
    answer = subtract(@num1, @num2)
  elsif @reply == "*"
    answer = multiply(@num1, @num2)
  elsif @reply == "/"
    if @num2 == 0
      puts "You cannot divide by 0"
      break
    end
    answer = divide(@num1, @num2)
  elsif @reply == "exit"
    break
  else
    puts "An error occured, please enter a valid response."
  end
  puts answer
  forty_two(answer)
end
puts "Thank you for using Alex's calculator."
