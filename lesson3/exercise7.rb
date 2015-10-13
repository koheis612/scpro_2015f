# coding: utf-8

dictionary = { 'dog' => '犬', 'cat' => '猫' }

loop do
  print '英語：'
  word = gets.chomp
  if dictionary[word]
    puts "日本語：#{dictionary[word]}"
  else
    print "日本語訳: "
    translation = gets.chomp
    dictionary.store(word, translation)
  end
end

