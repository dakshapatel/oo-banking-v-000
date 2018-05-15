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
    if @sender.valid?

      if  @status != "complete"
          @receiver.deposit(@amount)
          @sender.withdraw(@amount)
          @status = "complete"
    #if the transfer status is not = to complete than do the transfer

      end
    else
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@amount)
      @receiver.withdraw(@amount)
      @status = "reversed"
    end     
  end
end
