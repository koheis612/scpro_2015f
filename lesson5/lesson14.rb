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
    "#{university}#{faculty}"
  end
end

# keio student
class KeioStudent < Student
  def university
    '慶應義塾大学'
  end

  def transfer(faculty)
    @faculty = faculty
    def self.faculty
      @faculty
    end
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
puts "#{taro.name}は#{taro.affiliation}の学生です。"
taro.transfer('環境情報学部')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
