require 'transaction'

describe ".balance" do
  it "should return the balance in the account" do
    transaction = Transaction.new
    expect(transaction.balance).to eq(3000)
  end
end

describe ".credit" do
  it "should add the credit amount to the existing balance" do
    transaction = Transaction.new
    transaction.credit(500)
    expect(transaction.balance).to eq(3500)
  end
end

describe ".debit" do
  it "should subtract the debit amount from the existing balance" do
    transaction = Transaction.new
    transaction.debit(500)
    expect(transaction.balance).to eq(2500)
  end
end