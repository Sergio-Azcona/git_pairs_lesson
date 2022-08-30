class BankAccount
  attr_reader :account_number,
              :secret_code,
              :balance

  def initialize(id, pin, balance)
    @account_number = id
    @secret_code = pin
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= 0
      return @balance -= amount 
    else
     return @balance 
    end
  end

  def verify?(id, pin)
    if @account_number == true
      if @secret_code == true
        return @balance
      else 
        return "invalid code"
      end
    else 
      return "invalid number"
    end
  end
end