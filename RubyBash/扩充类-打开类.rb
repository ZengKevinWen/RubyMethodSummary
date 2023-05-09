class Student

  Version = 'V.1.0'

  attr_accessor :email
  attr_reader :name
  attr_reader :gender
  def initialize(name, gender, email)
    @name = name
    @gender = gender
    @email = email
  end

  # ruby_xia_Class.method   类方法
  def self.name
    p "Student Class"
  end


  def  public_demo
    p "This is a Student"
  end

  def  private_demo
    Student.demo
  end


  private
  def demo
    p "I'm #{@name} and Emial is #{@email}"

  end
end

p Student::Version

class Student
  Demo = "demo"

  def self.Kuo_chong
    p "kuo_chong"
  end
end
Student.Kuo_chong
p Student::Demo



class String
  def self.name  # self--> Class
    p "Class_name"
  end
end

String.name