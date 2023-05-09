class Demo
  def initialize(name, gender, no)
    @name = name
    @gender = gender
    @no = no
  end

  def name=(name)
    @name = name
  end
  def  name
    p @name
  end
end
demo = Demo.new("ailcie", "man", '123')
p demo
# !!!!!
demo.name=("alice")
demo.name


class Demo_2
  # Class_类常量   Class::常量
  Version = 4
  attr_accessor :name, :a
  attr_reader :gender
  attr_writer :no
  def initialize(name, gender, no=555, a=5)
    @a = a
    @name = name
    @gender = gender
    @no = no
  end
  def put_no
    puts @no
  end

end
demo_ = Demo_2.new("ailcie_", "man_")
demo_.name='kevin'
p demo_.a
demo_.a = 10
p demo_.a
p demo_.name
p demo_.gender
demo_.no ="no_"
demo_.put_no
# Class::常量
p Demo_2::Version


class Student

  Version = 'V.1.0'



  attr_accessor :email
  attr_reader :name, :gender
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
# 注意写法是有顺序的  最好不要 以 name=""或者name:""方式来写(建议直接传参数)
studnet_first = Student.new("kevin", "man", "@qq")
p studnet_first.email
studnet_first.public_demo
# studnet_first.private_demo
p Student::Version
Student.name


#todo  还有个问题  如何在class中的其他方法调用private下的方法
#todo class自定义一个不是private方法调用private方法 使用实例调用定义的方法(间接调用private方法)
#