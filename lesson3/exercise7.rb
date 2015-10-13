# coding: utf-8

dictionary = { 'dog' => '犬', 'cat' => '猫' }

loop do
  print 'English：'
  word = gets.chomp
  if dictionary[word]
    puts "Japanese：#{dictionary[word]}"
  else
    print "In Japanese?: "
    translation = gets.chomp
    dictionary.store(word, translation)
  end
end

