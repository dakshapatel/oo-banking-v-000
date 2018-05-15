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
  puts "Your balance is $#{@balance}."
  #puts output
end

def valid?
  if @balance == 0 || @status == "closed"
    return false
  else
    return true 

end

def close_account
  #can close its account(self)
end
end
