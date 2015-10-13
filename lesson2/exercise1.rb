# coding: utf-8

print("input digit: ")
num = gets.to_i
  

num.times do |i|
  print ' ' * num
  num -= 1
  print '*' * (i * 2 + 1)
  print "\n"
end
