# TODO rand方法  => Inetger(Fixnum Bignum) 既自然数
p rand(5)
p rand(-5550.55) # todo -5550.55.abs.to_i中随机一个整数
p rand(-5.54)
p "-" * 100

# TODO Fixnum Numeric Float的区别
#  文档 https://www.cnblogs.com/cnblogsfans/archive/2009/01/24/1380804.html
p 1.is_a?(Integer)
p 1.is_a?(Fixnum)
p 1.is_a?(Numeric)

p 1.2.is_a?(Float)
p 1.2.is_a?(Numeric)
p "-" * 100
# TODO class 与 superclass的区别
#  class方法用来获取对象的类，superclass用来获取类的超类 => 对象调用class 类调用superclass(既获取超类=> 类的第一层父类)
#  如下 ：
p 1.class
p 1.class.superclass
p 1.class.superclass.superclass

p 1.class.class
p 1.class.ancestors # todo include module 与 父类
p 1.class.included_modules #todo  include module

# TODO HASH update与merge方法
#  文档：https://vimsky.com/examples/usage/ruby-Hash-method-i-update-rb.html (一定场景下该方法很好用)
p "-" * 100

# TODO  class下 private public protected的区别  注意还没理解透彻 多看
#  文档： https://blog.csdn.net/weixin_37413070/article/details/108465230(这个文档还需要多看 多理解)
class Test
  def test
    test_pro
    test_pri
  end

  def self.test2
    test_pro
    test_pri
  end


  def test_pro
    p "pro_test"
  end

  def test_pri
    p "pri_test"
  end

  protected :test_pro
  private :test_pri

end
test  = Test.new
# test.test


Test::test2