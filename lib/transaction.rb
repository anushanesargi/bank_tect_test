class Transaction
  MINIMUM_BALANCE = 3000
  @@balance = MINIMUM_BALANCE

  def self.credit(date, amount_to_be_credited)
    @@balance += amount_to_be_credited
  end

  def self.withdrawal(date, amount_to_be_debited)
    @@balance -= amount_to_be_debited
  end

  def self.balance
    return @@balance
  end

end