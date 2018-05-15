class BankAccount

attr_reader :name
attr_accessor :balance, :status

def initialize(name)
  @name = name
  @status = "open"
  @balance = 1000

end

def deposit
#deposit money into its account(self)
end

def display_balance
  self.balance
# can display its(self) balance
end

def valid
#open status && balance > 0
#is valid
end

def close_account
  #can close its account(self)
end
end
