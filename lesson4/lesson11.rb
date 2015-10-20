# coding: utf-8

def arraycalc(a1, a2)
  results = []
  a1.each_index do |i|
    results << yield(a1[i], a2[i])
  end
end

arraycalc([1, 2, 3], [4, 5, 6]) do |i, j|
  p i * j
end
