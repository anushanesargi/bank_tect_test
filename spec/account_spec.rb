require 'account'

describe Account do
  describe ".deposit" do
    it "should add the credit amount to the existing balance" do
      first_account = Account.new(3000, [])
      first_account.deposit('13/01/2022', 500)
      expect(first_account.balance).to eq(3500)
    end
  end
  
  describe ".withdraw" do
    it "should debit the amount to the existing balance" do
      second_account = Account.new(2000, [])
      second_account.withdraw('13/01/2022', 500)
      expect(second_account.balance).to eq(1500)
    end
  end

  describe ".passbook" do
    it "should add the transactions to the passbook" do
      first_account = Account.new(3000, [])
      first_account.deposit('13/01/2022', 500)
      first_account.withdraw('15/01/2022', 500)
      expect(first_account.passbook).to eq([{ date: '13/01/2022', credit: '500', debit: '', bal: '3500' }, { date: '15/01/2022', credit: '', debit: '500', bal: '3000' }])
    end
  end

end
