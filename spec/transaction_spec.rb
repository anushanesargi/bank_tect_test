require 'transaction'

describe ".balance" do
  it "should return the balance in the account" do
    expect(Transaction.balance).to eq(3000)
  end
end

describe ".credit" do
  it "should add the credit amount to the existing balance" do
    Transaction.credit('13/01/2022', 500)
    expect(Transaction.balance).to eq(3500)
  end
end

describe ".debit" do
  it "should subtract the debit amount from the existing balance" do
    Transaction.withdrawal('15/01/2022', 500)
    expect(Transaction.balance).to eq(3000)
  end
end