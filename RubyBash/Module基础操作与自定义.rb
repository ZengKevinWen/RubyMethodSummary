# todo require 与 include的区别 require是在rb文件导入其他rb文件的代码   include是在CLass 或者 其他一个分装好的代码中导入rb文件中的代码
require './类的基本操作.rb'
p Student::Version
p "====================================="
# 模块不能new方法 因此 MathTest模块不能直接调用 def_methods方法 如 MathTest.def_methods方法报错(通常include CLass中 实例化.def_methods)
# 模块可以调用模块下的self方法和常量 如 MathTest::Demo MathTest::kai_fang 调用  注意 (include CLass中 CLass无法使用MathTest的self方法)
module MathTest
  # Demo  class实量一样
  Demo = "helle world"
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

p MathTest::Demo
MathTest.say_hello
p MathTest.kai_fang(4)
p "-----------------------------------------"


# 现在做到在class中导入module include 模块 下 class可以使用 模块的常量 模块下的类似于class的def方法  但是 在导入module中的class下包括有调用module中的self def方法
class Student
  include MathTest
end

p Student::Demo


# 不知道为什么不可以这样写  ----记住
# p Student.kai_fang(4)
# Student.say_hello

Student.new('hello', 'dja', 'sad').def_methods



p ''.nil?



