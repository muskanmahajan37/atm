class Account
  attr :owner, :balance
  def initialize attr
    @owner = attr[:owner]
    @balance = attr[:balance]
  end
end