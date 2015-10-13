# coding: utf-8

print("input digit: ")
num = gets.chomp.to_i
  

num.times do |i|
  print ' ' * num
  num = num-1
  print '*' * (i * 2 + 1)
  print "\n"
end
