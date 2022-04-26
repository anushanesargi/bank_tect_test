require 'account'

describe Account do
  describe ".credit" do
    it "should add the credit amount to the existing balance" do
      first_account = Account.new(3000, [])
      first_account.credit('13/01/2022', 500)
      expect(first_account.balance).to eq(3500)
    end
  end
  
  describe ".withdrawal" do
    it "should debit the amount to the existing balance" do
      second_account = Account.new(2000, [])
      second_account.withdrawal('13/01/2022', 500)
      expect(second_account.balance).to eq(1500)
    end
  end

  describe ".passbook" do
    it "should add the transactions to the passbook" do
      first_account = Account.new(3000, [])
      first_account.credit('13/01/2022', 500)
      first_account.withdrawal('15/01/2022', 500)
      expect(first_account.passbook).to eq([{date: '13/01/2022', credit: 500, debit: 0, bal: 3500}, {date: '15/01/2022', credit: 0, debit: 500, bal: 3000}])
    end
  end

end

