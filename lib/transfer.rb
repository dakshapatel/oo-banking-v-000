class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    
    if @status != "complete"
        @receiver.deposit(@amount)
        @sender.withdraw(@amount)
        @status = "complete"
    #if the transfer status is not = to complete than do the transfer
    end
  end


end
