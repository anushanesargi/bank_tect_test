require 'statement'

describe '.statement_print' do
  it "should display the passbok in a particluar fashion" do
    first_account = Account.new(3000, [])
    first_account.deposit('13/01/2022', 500)
    first_account.withdraw('15/01/2022', 500)
    statement = Statement.new(first_account)
    expect { statement.statement_print }.to output("date || credit || debit || balance\n15/01/2022 ||  || 500 || 3000\n13/01/2022 || 500 ||  || 3500\n").to_stdout
  end

end
