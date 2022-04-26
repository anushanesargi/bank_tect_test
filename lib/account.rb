class Account

  attr_reader :balance, :passbook

  def initialize(bal, passbook)
    @balance = bal
    @passbook = passbook
  end

  def credit(date, amount_to_be_credited)
    @balance += amount_to_be_credited
    @passbook << {date: date, credit: amount_to_be_credited, debit: 0, bal: @balance}
  end

  def withdrawal(date, amount_to_be_debited)
    @balance -= amount_to_be_debited
    @passbook << {date: date, credit: 0, debit: amount_to_be_debited, bal: @balance}
  end

end