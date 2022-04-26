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

  # def withdrawal(date, amount_to_be_debited)
  #   @debit_date = date
  #   @withdrawal = amount_to_be_debited
  #   Account.new(current_account.balance - amount_to_be_credited, current_account.passbook << {date: @debit_date, credit: @deposit, debit: 0, bal: @balance})
  # end

end