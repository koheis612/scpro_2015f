# coding: utf-8

is_prime = catch(:exit) do
  print 'input digit: '
  n = gets.to_i
  throw :exit if n < 3

  2.upto(Math.sqrt(n)) do |i|
    throw :exit, false if n % i == 0
  end

  throw :exit, true
end

puts is_prime
