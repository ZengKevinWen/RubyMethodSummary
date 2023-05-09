class AncestryPoint
  def test
    p "test"
  end
end
class Point < AncestryPoint
  def self.test_self
    p "测试类方法"
  end
  def my_methods
    p "本身的方法"
  end

  class << self
    def self_class
      "self_class"
    end
  end
end

# todo 当前类的ancestors(输出所有继承的class与 include的module 不输出extend的module)
p Point.ancestors
p Point.self_class
point = Point.new
point2 = Point.new
# 所有的实例方法
p point.methods.length
# todo false => 只输出先实例对象后 在自定义发方法 如下
p point.methods(false)
# todo 先实例 在自定义方法(singleton methods优先级最高)
def point.tests
  p "实例对象后在定义的方法"
end
p point.methods(false)
p point.singleton_class
p point.singleton_class.methods(false )
p point.singleton_class.class
# 所有方法
p point.methods
p point2.methods
#todo ==============================================================================================

# todo 区别 class的self与实例的self
class SecondPoint
  # TODO 类常量(不需要封装方法便可以获取)
  CLASS_CONSTANT = '5'

  # TODO 类变量(需要封装方法----与实例一样 attr_accessor(读写))
  @@CLASS_VARIABLE = '6'

  def test
    p 'test'
  end

  def first_demo
    # self=>实例
    self.test
  end

  class << self
    def class_test
      p 'class test'
    end

    def second_demo
      # self => class
      self.class_test
    end

    def getter_variable
      @@CLASS_VARIABLE
    end
  end
end


# TODO 注意下面写法(有点牛逼)
class SecondPoint
  def self.setter_variable
    @@CLASS_VARIABLE = '555'
    @@CLASS_VARIABLE
  end
end
p SecondPoint::getter_variable
p SecondPoint.setter_variable
p SecondPoint::CLASS_CONSTANT
#todo ==============================================================================================


class ThirdPoint < SecondPoint
  def self.setter_variable
    p '开始'
    p @@CLASS_VARIABLE
    @@CLASS_VARIABLE = '666'
    p @@CLASS_VARIABLE
    super # 父类方法
    p @@CLASS_VARIABLE
  end
end

ThirdPoint::setter_variable