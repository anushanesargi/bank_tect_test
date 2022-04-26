Bank Tech Test

Steps To Run The Program

  1. Go to: https://github.com/anushanesargi/airport_challenge
  2. Fork this repo, and run git clone SSH key on your local machine
  3. Run the command 'bundle install' to install all the bundles required to run the program
  4. run 'rspec' to test the testcases
  5. run 'rubocop' for linting
  6. run 'irb'
  7. run the following commands in irb:
    require_relative'account'
    require_relative'statement'
    clients_account = Account.new(0, [])
    clients_account.deposit('10/01/2023', 1000)
    clients_account.deposit('13/01/2023', 2000)
    clients_account.withdraw('14/01/2023', 500)
    bank_statement = Statement.new(clients_account)
    bank_statement.statement_print
  

Approach

  1. Reading through the problem statement.
  2. Writing the user cases
  3. Writing down briefly the steps required to solve the problem
  4. Modelling
  5. Writing simple test for the first user case
  6. Writing the logic to pass the failing test
  7. Committing the code
  8. Next usercase, another test - which fails, solving the failed test with logic implementation
  9. Changed the names of the methods to suit the problem statement

Code Structure:
  1. class Account:
    . Needs two arguments to be passed to the constructor: a. intial balance b. initial passbook log in an array format which consits of hashes eg. [{date: '', credit: '', debit: '', balance: ''}]
    . Encapsulates, the account operations such as deposits, withdrawals and logging the transactions
  2. class Statement
    . Prints the bank statement in a particular fashion: date || credit || debit || balance
    . This class is dependent on Account class and needs an account instance to be passed to its constructor.
