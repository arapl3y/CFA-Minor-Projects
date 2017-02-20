# ATM class
class ATM
  def initialize(bank_name, bank_balance)
    @bank_name = bank_name
    @bank_balance = bank_balance
  end

  attr_accessor :bank_name, :bank_balance
end # end atm class

# Account class
class Account
  def initialize(acct_name, acct_balance, pin_num)
    @acct_name = acct_name
    @acct_balance = acct_balance
    @pin_num = pin_num
  end

  attr_accessor :acct_name, :acct_balance, :pin_num

  def withdraw(atm, _amount)
    puts 'Please enter an amount to withdraw.'
    @amount = gets.chomp.to_i
    if @amount < atm.bank_balance
      @acct_balance -= @amount
      atm.bank_balance -= @amount
      puts "Hello #{@acct_name}, you withdrew $#{@amount}."
      puts "This is your current balance: $#{@acct_balance}."
    else
      puts 'Sorry, this ATM has insufficient funds. Try again later.'
    end
  end

  def deposit(atm, _amount)
    puts 'Please enter an amount to deposit'
    @amount = gets.chomp.to_i
    if @amount > @acct_balance
      puts 'Insufficient funds'
      @balance = 0
      return
    end
    @acct_balance += @amount
    atm.bank_balance += @amount
    puts "Hello #{@acct_name}, you deposited $#{@amount}."
    puts "This is your current balance: $#{@acct_balance}."
  end
end # end account class

def use_atm(account, atm)
  puts "Welcome to #{atm.bank_name}."
  puts 'Please enter your PIN number'
  pin_input = gets.chomp.to_i
  if pin_input == account.pin_num
    loop do
      puts 'Please type withdraw, deposit, balance or exit.'
      input = gets.chomp.downcase
      if input == 'withdraw'
        account.withdraw(atm, @amount)
      elsif input == 'deposit'
        account.deposit(atm, @amount)
      elsif input == 'balance'
        puts "Your current balance is $#{account.acct_balance}."
        puts "The ATM's balance is $#{atm.bank_balance}."
      elsif input == 'exit'
        break # Close program
      else
        puts "Please enter a valid response of 'withdraw', 'deposit' or 'balance'"
      end
    end
    puts 'Thank you for using Cool Bank, have a nice day.'
  else
    puts 'Your PIN was incorrect, please try again.'
  end
end

alex_account = Account.new('Alex', 500, 1234)
new_atm = ATM.new('Cool Bank', 1000)

use_atm(alex_account, new_atm)
