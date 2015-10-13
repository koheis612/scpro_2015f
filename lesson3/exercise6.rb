# coding: utf-8

# search insert position
def search_index(array, num)
  ret = array.index do |value|
    value >= num
  end
end

array = [0, 100]

loop do
  print "input digit from 1 to 99: "
  num = gets.to_i

  if num >= 1 && num <= 99
    array.insert(search_index(array, num), num)
    array.uniq!
    p array
  else
    puts 'aborted!'
    break
  end
end
