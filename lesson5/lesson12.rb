# coding: utf-8

# account class
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance - amount < 0
      puts 'error: Cannot withdraw amounts greater than the balance.'
      exit
    end
    @balance -= amount
  end

  def transfer(another, amount)
    fail if another.nil?
    another.deposit(amount)
    withdraw(amount)
  end
end

# check
a = Account.new
a.deposit(3000)

b = Account.new
b.deposit(1000)
b.withdraw(500)

a.transfer(b, 2000)
puts a.balance
puts b.balance
b.transfer(a, 5000)
