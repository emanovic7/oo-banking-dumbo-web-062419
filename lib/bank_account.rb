class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status="open")
    @name = name
    @balance = balance
    @status = status
  end


  #INSTANCE METHODS
  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else
      return false
    end
  end

  def close_account
    self.status = "closed"
  end

end
