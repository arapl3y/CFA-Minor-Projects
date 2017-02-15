# 1. Set up a variable to hold a balance of 100
# 2. Create a method to withdraw 20 and display balance
# 3. Create a method to deposit 20 and display 20
# 4. Ask the user whether they want to withdraw or deposit 20 from their bank account
# 5. Loop over the user input 10 times

## Had issues trying to call if statement on methods
## before they were invoked

    @balance = 100

    puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
    input = gets.chomp.to_i

    def display
      puts "Your current balance is $#{@balance}"
    end

    def withdraw
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      if amount > @balance
        puts "Insufficient funds"
        @balance = 0
        return
      end
      @balance -= amount
      puts "You have withdrawn $#{amount}. Your current balance is $#{@balance}"
    end

    def deposit
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      @balance += amount
      puts "You have deposited $#{amount}. Your current balance is $#{@balance}"
    end


    while true
      if input == 1
        display
        puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
        input = gets.chomp.to_i
      elsif input == 2
        deposit
        puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
        input = gets.chomp.to_i
      elsif input == 3
        withdraw
        puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
        input = gets.chomp.to_i
      elsif input == 4
        break
      else
        puts "Please enter a valid a number"
        puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
        input = gets.chomp.to_i
      end
    end
    puts "Thank you for using this ATM"
