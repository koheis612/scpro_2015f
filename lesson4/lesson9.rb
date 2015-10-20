# coding: utf-8

ret = ''

open('./words').each_line do |word|
  ret = word if word.length >= ret.length
end

puts "longest word: #{ret}"
puts "length: #{ret.length}"
