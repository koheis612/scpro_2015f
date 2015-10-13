# coding: utf-8

# check stdin number is prime or not
def prime?
  # get stdin number
  print 'input digit: '
  n = gets.to_i

  # prime decision
  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0
  end
  true
end

puts prime?
