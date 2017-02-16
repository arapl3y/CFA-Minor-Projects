class ATM

  def initialize(bank, atm_balance)
    @bank = bank
    @atm_balance = atm_balance
  end

  def reduce_balance
    @atm_balance -= alex.withdraw(amount)
  end

  def add_balance
    @atm_balance += alex.deposit(amount)
  end

end # END ATM CLASS


class Account

  def initialize(account_name, pin_num, acct_balance)
    @account_name = account_name
    @pin_num = pin_num
    @acct_balance = acct_balance
  end

  def withdraw(atm, amount)
    if pin_num == 1234
      puts "Hello #{@acct_name}, how much would you like to withdraw?"
      amount = gets.chomp.to_i
      if atm.atm_balance >= amount
        @acct_balance += amount
        atm.reduce_balance(amount)
        puts "You withdrew #{amount}, your current balance is #{@acct_balance}"
      else
        puts "Sorry, the ATM has insufficient funds, try again later."
      end
    else
      puts "Incorrect PIN, please try again."
    end
  end

  def deposit(atm, amount)
    if pin_num == 1234
      puts "Hello #{@acct_name}, how much would you like to deposit?"
      amount = gets.chomp.to_i
      if @acct_balance < amount
        @acct_balance -= amount
        atm.increase_balance(amount)
        puts "You deposited #{amount}, your current balance is #{@acct_balance}"
      else
        puts "Sorry, you have insufficient funds, try again later."
      end
    else
      puts "Incorrect PIN, please try again."
    end
  end

  while true
    puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
    input = gets.chomp.to_i
    if input == 1
      display
    elsif input == 2
      deposit
    elsif input == 3
      withdraw
    elsif input == 4
      break
    else
      puts "Please enter a valid a number"
    end
  end
  puts "Thank you for using #{broadway_atm.bank}"
end # END ACCOUNT CLASS

broadway_atm = ATM.new("Commonwealth", 300)
alex = Account.new("Alex", 1234, 200)

alex.withdraw(broadway_atm, 100)


#
# class Account
#
#   def initialize()
#
#   end
#
#   attr_accessor :display, :withdraw, :deposit
# end
#
#     @balance = 100
#
#     def display
#       puts "Your current balance is $#{@balance}"
#     end
#
#     def withdraw
#       puts "How much would you like to withdraw?"
#       amount = gets.chomp.to_i
#       if amount > @balance
#         puts "Insufficient funds"
#         @balance = 0
#         return
#       end
#       @balance -= amount
#       puts "You have withdrawn $#{amount}. Your current balance is $#{@balance}"
#     end
#
#     def deposit
#       puts "How much would you like to deposit?"
#       amount = gets.chomp.to_i
#       @balance += amount
#       puts "You have deposited $#{amount}. Your current balance is $#{@balance}"
#     end
#
#
#     while true
#       puts "Would you like to 1. display, 2. deposit, 3. withdraw or 4. exit?"
#       input = gets.chomp.to_i
#       if input == 1
#         display
#       elsif input == 2
#         deposit
#       elsif input == 3
#         withdraw
#       elsif input == 4
#         break
#       else
#         puts "Please enter a valid a number"
#       end
#     end
#     puts "Thank you for using this AlexBank ATM"
