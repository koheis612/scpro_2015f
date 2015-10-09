# coding: utf-8

prime = catch(:exit) do
  print 'input digit: '
  n = STDIN.gets.chomp('\n').to_i
  throw :exit if n < 3

  2.upto(Math.sqrt(n)) do |i|
    throw :exit, false if n % i == 0
  end

  throw :exit, true
end

puts prime
