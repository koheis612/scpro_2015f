# coding: utf-8

# student class
class Student
  def initialize(n)
    @name = n
  end

  def name
    @name
  end

  def affiliation
    "#{university || '大学未定義'}#{faculty || '学部未定義'}"
  end
end

# keio student
class KeioStudent < Student
  def university
    '慶應義塾大学'
  end
end

# faculty of policy management
class PStudent < KeioStudent
  def faculty
    '総合政策学部'
  end
end

# faculty of environmental information
class EStudent < KeioStudent
  def faculty
    '環境情報学部'
  end
end

# check
taro = PStudent.new('太郎')
hanako = EStudent.new('花子')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
puts "#{hanako.name}は#{hanako.affiliation}の学生です。"
