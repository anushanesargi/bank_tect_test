class Account

  attr_reader :balance, :passbook

  def initialize(bal, passbook)
    @balance = bal
    @passbook = passbook
  end

  def deposit(date, amount_to_be_credited)
    @balance += amount_to_be_credited
    @passbook << { date: date, credit: amount_to_be_credited.to_s, debit: "", bal: @balance.to_s }
  end

  def withdraw(date, amount_to_be_debited)
    @balance -= amount_to_be_debited
    @passbook << { date: date, credit: "", debit: amount_to_be_debited.to_s, bal: @balance.to_s }
  end

end
