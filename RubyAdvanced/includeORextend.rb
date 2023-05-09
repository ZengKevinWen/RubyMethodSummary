module MathMatica
  PI = 3.14
  def self.clazz_fun
    puts "MathMatica模块可以使用类方法"
  end
  #模块因为无法实例化对象所以用不了实例方法
  def hello
    puts "MathMatica模块中的hello方法"
  end

  def say_demo
    Demo::test
    Demo.test
    Demo.new.test2
  end

  class Demo
    TEST = 5
    def self.test
      p "MathMatica模块下的类下的类方法"
    end

    def test2
      p "MathMatica模块下的类下的实例方法"
    end
  end


end

module Test2
  def hello
    p "这是Test模块下的hello方法"
  end


end

#模块直接调用常量
puts MathMatica::PI
#模块使用类方法
puts MathMatica::clazz_fun
#需要使用这个模块时候将这个模块导入进来称为Mix-in
class Student
  attr_accessor :name, :old, :sex
  include MathMatica#把模块注入目标类或者模块作为实例方法  todo 针对模块长量与实列方法操作(对module本身的类方法无效--即目标类操作该module下的类方法报错)
  extend MathMatica#把模块注入目标类或者模块作为类方法  todo 针对模块长量与实列方法操作(对module本身的类方法无效--即目标类操作该module下的类方法报错)
  include Test2 # todo 当include的模块中存在相同方法 如 以上 hello方法 本Class的实例话对象会先调用本身的方法 当本身不存在该方法时 以最后的module中的方法为准
  extend Test2  # todo extend 如include一样
  class << self
    def clazz_fun2
      puts "Student类中的类方法"
    end
  end
  def initialize(name, old, sex)
    @name = name
    @old = old
    @sex = sex
  end

  def say_hi
    puts "Student类的实例方法"
    hello#类中使用include导入可以使用模块的实例方法
    self.hello
    # self.clazz_fun2
    # clazz_fun2 实例方法中不能调用类方法
  end

  # def hello
  #   p "Student本身的hello方法"
  # end
end
p Student::PI
p "include OR extend module时 module下没有其他模块与class时情况"
p "=" * 150
Student::clazz_fun2 #类可以调用类方法
Student::hello
p "!!"
# Student.clazz_fun #  todo  Excepetion
puts Student::PI #类可以使用模块中的常量
# todo include Student.say_hi#实例不能调用类方法 StudenCLass会首先调用本身的hello方法(在没有情况下会去include寻找 与 父类寻找)
s = Student.new("huge", 20, "女")
s.say_hi
s.hello
# s.clazz_fun # todo Exception

# s.clazz_fun2 Obj不能调用类方法

p "=" * 150

p ""
p "=" * 100
MathMatica::Demo::TEST
MathMatica::Demo.test
MathMatica::Demo.new.test2

m = Student.new("kevin", 20, "nan")
Student::say_demo
m.say_demo
p "=" * 100