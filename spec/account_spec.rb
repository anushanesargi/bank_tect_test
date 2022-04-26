require 'account'

describe ".credit" do
  it "should add the credit amount to the existing balance" do
    first_account = Account.new(3000, [])
    first_account.credit('13/01/2022', 500)
    expect(first_account.balance).to eq(3500)
  end
end
