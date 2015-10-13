# coding: utf-8

print 'input login name: '
login_name = gets.chomp

re = /(s|t)\d{5}[a-z]{2}/

if re.match(login_name)
  puts 'yes'
else
  puts 'no'
end
