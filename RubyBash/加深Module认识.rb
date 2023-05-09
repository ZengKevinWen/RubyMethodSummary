
# module是class类的父类 class.superclass ===>module module.superclass==>objetc
#
# Devise用于rails 验证数据 刷新ip地址等操作的module(模块)
#
require './类的基本操作.rb'
p Student::Version
p "====================================="
module MathTest
  # Demo  class实量一样
  Demo = "helle worldss"
  def self.say_hello
    p "This is Module methos"
  end

  def self.kai_fang(number)
    Math.sqrt(number)
  end

  def def_methods
    p "this is a def_methods"
    end
end


module MathTest_2
  # Demo  class实量一样
  Demo_2 = "helle worlds"
  def self.say_hello
    p "This is Module methos"
  end

  def self.kai_fang(number)
    Math.sqrt(number)
  end

  def def_methodss
    p "this is a def_methodss"
  end
end

p MathTest::Demo
MathTest.say_hello
p MathTest.kai_fang(4)
p "-----------------------------------------"


# 现在做到在class中导入module include 模块 下 class可以使用 模块的常量 模块下的类似于class的def方法  但是 在导入module中的class下包括有调用module中的self def方法
class Student
  include MathTest
  extend MathTest_2
end

p Student::Demo


# 不知道为什么不可以这样写  ----记住
# p Student.kai_fang(4)
# Student.say_hello


#  注意 inculde与extend的区别 在include导入module下 module中的方法为类--是列化之后对象的方法
# extend导入的module下 module中的方法 为类的方法  注意 inculde 与extend导入module时 都不混入 module下的del self.方法名
# 子可以通过Module::def.self方法(类似与class的类方法)
Student.new('hello', 'dja', 'sad').def_methods
Student.def_methodss


# todo  extend导入的module中好像不可以用Class::module的常量
# todo inculde可以使用
Student::Demo_2