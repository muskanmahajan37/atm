class Account
  
  attr :owner, :balance
  
  @@accounts = []
  
  def initialize attr
    @owner = attr[:owner]
    @balance = attr[:balance]
  end
  
  def self.all
    @@accounts
  end
  
  def self.clear
    @@accounts = []
  end
end