class Accounts
	attr_accessor :balance 
	
  def initialize(name, op_balance)
		@name = name
		@balance = op_balance
  end
  
	def deposit(amt)
		@balance += amt
	end
end

class Savings<Accounts
	def initialize(name, op_balance)
		super
	end
	
	def withdraw(amt)
		if ((self.balance - amt) > 500.00)
      self.balance -= amt
		else
			puts 'Insufficient funds...'
		end
  end
	
  def withdraw(amt)
    raise 'No balance.' if self.balance - amt <= 500
    self.balance -= amt
  end 	
end

s = Savings.new('Peter',5000.00)
s.deposit(500.00)
puts s.balance.to_s
s.withdraw(20.00)
puts s.balance.to_s
