require 'account'

describe Account do
  first_account = Account.new(3000, [])
  second_account = Account.new(2000, [])
  describe ".credit" do
    it "should add the credit amount to the existing balance" do
      first_account.credit('13/01/2022', 500)
      expect(first_account.balance).to eq(3500)
    end
  end
  
  describe ".credit" do
    it "should add the credit amount to the existing balance" do
      second_account.withdrawal('13/01/2022', 500)
      expect(second_account.balance).to eq(1500)
    end
  end

end

