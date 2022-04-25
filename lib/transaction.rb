class Transaction
  MINIMUM_BALANCE = 2000

  def initialize
    @balance = MINIMUM_BALANCE
  end

  def credit(amount_to_be_added)
    @balance += amount_to_be_added
  end

  def balance
    return @balance
  end

end