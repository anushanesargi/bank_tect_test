require 'transaction'

describe ".balance" do
  it "should return the balance in the account" do
    transaction = Transaction.new
    expect(transaction.balance).to eq(2000)
  end
end

