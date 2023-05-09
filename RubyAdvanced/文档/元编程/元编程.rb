demo_arry = [1,5,nil,6,7,9,8,2]
demo_arrys = demo_arry.map(&:to_s)
array = []
array << demo_arry
array << demo_arrys
p array
p array.each(&:join)
# p demo_arrys.each(&:join)
p ["1245","4513"].join


#todo  元编程
# TODO eval (查看ruby进阶学习 eval结合 method_missing方法 实现方法容器(鸭子模型) )
p eval "(1+1).to_s"
p eval "'5555'.to_s"


#TODO class_eval => 使用class_eval时将 String看成一个class 并创建foo方法(instance)
String.class_eval "def foo; p 'class_eval'; end "
str="测试class_eval"
str.foo


#TODO class_eval => instance_eval String看成一个object 并为这个对象创建方法foo(其实就是这个Sting的类方法)
String.instance_eval "def foo; p 'instance_eval'; end "
String.foo

#TODO 注意class_eval 与 instance_eval  看视频吧



#TODO define_method比较eval的优点(安全问题)

define_method(:foo){ p "test"}
foo