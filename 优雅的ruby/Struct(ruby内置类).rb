


# todo 参考文档 https://blog.csdn.net/Xunzi229/article/details/52061098
# todo 参考文档2 https://www.jianshu.com/p/effd83b0eb91  --这个不错
# todo Ruby内置Strut模块 可以执行看看 自定义与内置的区别 同时点进去内置源码
test = [1,2,3]
Place = Struct.new(:first,:second,:third) do
  def to_int
    first
  end
end
first = Place.new(0,"kevin","第一次")
second = Place.new(1,"alice","第二次")
third = Place.new(2,"tom","第三次")
[first, second, third].each do |d|
  p d
  p "#{d.first},#{d.second},#{d.third},#{test[d.first]}"
  p "-" * 10
  # todo Struct 实现块增加 to_int方法后(固定写法才有效) 索引写法改变 -   ----> 想清楚就要搞清楚struct类
  p "#{d.first},#{d.second},#{d.third},#{test[d]}"
end



class Kevin
  def initialize(index,name,prize)
    @index = index
    @name = name
    @prize = prize
  end
end
p Kevin.new(1,2,3)
#todo 将kevin改为Struts时(其实是继承源码的Struts 可以进行new 不过其他的很多功能没有实现)
KevinPlace = Kevin.new(:index,:name,:prize)
first = KevinPlace.new(0,"kevin","第一次")
second = KevinPlace.new(2,"alice","第二次")
third = KevinPlace.new(0,"tom","第三次")

[first, second, third].each do |d|
  p d
  p "#{d.index},#{d.name},#{d.prize}"
end
