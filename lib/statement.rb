require_relative 'account'

class Statement

  def initialize(instance)
    @account_instance = instance
  end

  def statement_print
    puts "date || credit || debit || balance"
    @account_instance.passbook.reverse.each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:bal]}"
    end
  end

end