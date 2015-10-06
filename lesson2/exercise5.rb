# coding: utf-8
def is_prime
  print 'input digit: '
  n = STDIN.gets.chomp('\n').to_i
  throw :hoge if n < 3
  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0
  end
  
  return true
end

puts catch(:exit) { is_prime }
