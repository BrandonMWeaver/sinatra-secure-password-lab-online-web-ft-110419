class User < ActiveRecord::Base
  
  has_secure_password
  attr_accessor :balance
  @balance = 0
  
  def deposit(amount)
    @balance += amount
  end
  
  def withdrawal(amount)
    if amount <= @balance
      @balance -= amount
    end
  end
  
end
