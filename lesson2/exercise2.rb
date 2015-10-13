# coding: utf-8

answer = rand(0..99)

loop do
  print("input digit: ")
  num = gets.to_i

  if num > answer
    puts "answer is smaller than #{num}"
  elsif num < answer
    puts "answer is bigger than #{num}"
  else num == answer
    puts 'bingo!'
    break
  end
end
