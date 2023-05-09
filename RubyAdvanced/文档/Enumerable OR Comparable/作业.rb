# TODO 参考文档  rubys enumerable  rubys comparable
p Comparable.instance_methods #todo 类的instance_method(true) 查看当前类下所有的instance_methods方法  false只是查看当前类的instance_methods
p Enumerable
p Enumerable.instance_methods

p 'a'.class.superclass
p 'a'.class.included_modules
p 6.between?(1,9)