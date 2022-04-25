class Transaction
  MINIMUM_BALANCE = 3000

  def initialize
    @balance = MINIMUM_BALANCE
  end

  def credit(amount_to_be_credited)
    @balance += amount_to_be_credited
  end

  def debit(amount_to_be_debited)
    @balance -= amount_to_be_debited
  end

  def balance
    return @balance
  end

end