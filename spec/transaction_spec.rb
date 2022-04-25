require 'transaction'

describe ".balance" do
  it "should return the balance in the account" do
    transaction = Transaction.new
    expect(transaction.balance).to eq(2000)
  end
end

describe ".credit" do
  it "should add the credit amount the the existing balance" do
    transaction = Transaction.new
    transaction.credit(500)
     expect(transaction.balance).to eq(2500)
  end
end