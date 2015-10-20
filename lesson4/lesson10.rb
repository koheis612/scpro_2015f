# coding: utf-8

def combination(array)
  ret = []
  array.combination(2).to_a.each do |i|
    ret << i.inject { |a, e| a + e }
  end
  ret.sort!
end

weight = [1, 2, 3, 10, 20]
p combination(weight)
