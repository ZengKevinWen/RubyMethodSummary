# 逻辑运算符
a = true
b = nil || false
p a && b

p 4 > 6 || a

p 4 > 6 && a


#   条件运算式
a = 4
b = 5
c = a>b ? a : b
p c


# 范围运算符   ---------        范围运算式
a = 'hello world'   # ... 比  ..  小最后一位
p a[0..4]
p a[0...4]
p a[1...5]


# 自定义符号
class Vector

  attr_reader :x, :y
  #todo def initialize 方法中初始化的数据必须使用@ 否则在打印或者数据时 为nil
  # p 对象.xx( if xx = x yy =y ) ===> nil
  #
  def initialize(x,y) # initialize
    @x = x
    @y = y
  end


  # todo 注意重点
  # todo 在class外调用other_vector.x(尽管initialize必须使用@) => @x  other_vector.@x ==> raise
  def +(other_vector)
    Vector.new( @x+other_vector.x, y+other_vector.y)
  end
end

new_vertor = Vector.new(1,5)
p new_vertor.x
p @x
# p new_vertor.yy
other_new_vertor = Vector.new(5,7)


p new_vertor+other_new_vertor