class Transaction
  MINIMUM_BALANCE = 2000

  def initialize
    @balance = MINIMUM_BALANCE
  end

  def balance
    return @balance
  end

end