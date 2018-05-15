require 'pry'
class BankAccount

attr_reader :name
attr_accessor :balance, :status

def initialize(name)
  @name = name
  @status = "open"
  @balance = 1000

end

def deposit(amount)
  @balance += amount

end

def display_balance
  #binding.pry
  puts "Your balance is #{@balance}."
  #puts output
end

def valid
#open status && balance > 0
#is valid
end

def close_account
  #can close its account(self)
end
end
