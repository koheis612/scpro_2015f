# coding: utf-8

# check stdin number is prime or not
def is_prime
  # get stdin number
  print 'input digit: '
  n = gets.chomp.to_i
  
  # prime decision
  2.upto(sqrt(n)) do |i|
    return false if n % i == 0
  end
  return true
end

puts is_prime
