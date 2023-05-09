module Helper

  def self.distances(obj1,obj2)
    # TODO 算数平方根
    Math.sqrt((obj1.x-obj2.x)**2 + (obj1.y-obj2.y)**2)
  end

  def shirt(x,y,z=5)
    return x+z,y,z
  end
end


class ObjectDistances
  attr_reader :y, :x
  def initialize(x=0, y=0)
    @x =x
    @y =y
  end

end
obj1 = ObjectDistances.new(1,2)
obj2 = ObjectDistances.new(2,5)

p Helper::distances(obj1,obj2)

#TODO include使用
class FirstDistances < ObjectDistances
  # TODO 将module下 instance methods 引入class当做 instance methods
  include Helper
end
first = FirstDistances.new(5,6)
p first.shirt(first.x, first.y)
# p FirstDistances.shirt(first.x, first.y)  # todo 错误案列使用报错

#TODO  extend
class SecondDistances < ObjectDistances
  # TODO 将module 下instance methods引入class 当做class methods
  extend Helper
end

second = SecondDistances.new(5,9)
p SecondDistances::shirt(second.x,second.y,6)
# second.shirt(shirt.x,shirt.y) # todo 错误案列使用

#TODO 有个注意点 当class下 include 与extend同时引入同一个module时 => class下的  instance与class都能调用module下的instance methods
#TODO ======================================================================针对上方注意点 扩展一下高级写法
module AgainHelper
  def distances(obj1,obj2)
    # TODO 算数平方根
    Math.sqrt((obj1.x-obj2.x)**2 + (obj1.y-obj2.y)**2)
  end
  def demo
    p "demo"
  end
  p "执行AgainHelper内部"
  module  ClassMethods
    def  shirt(x,y,z=5)
      return x+z,y,z
    end
  end

  #TODO included(与rails中 concern相同) => 当AgainHelper模块被引入class时 klass对应引入的class 然后对klass进行其他操作(间接表示了include module时 如果module里面还有module2时  module2并没有执行 )
  def self.included(klass)
    p "#{klass}这个应该是引入当前module的class"
    p "#{self}这个应该是被class引入的module"
    klass.extend ClassMethods
  end
end

class AgainObjectDistances < FirstDistances
  include AgainHelper
end

again= AgainObjectDistances.new(1,5)
p AgainObjectDistances::shirt(5,6)
again.demo
p "-"  * 100
#TODO ----------------------------------  included_modules展示 class include的module
p FirstDistances.included_modules  #TODO 注意任何class默认携带 Kernel模块
p SecondDistances.included_modules
p AgainObjectDistances.included_modules
p "-"  * 100
p AgainObjectDistances.shirt(5,6)
p AgainObjectDistances.ancestors
# TODO ancestors(输出当前class的所有祖类与所有include的module 不输出extend的module)   included_modules(当前class的所有include的module)
p AgainObjectDistances.ancestors - AgainObjectDistances.included_modules


#TODO 注意查看下列代码----认真查看有点东西
# TODO 注意点--------------------------------
p AgainObjectDistances.class
p AgainHelper.class

#todo 证明了class的父类是module
p AgainObjectDistances.class.superclass
# todo 再次证明class的父类是module
p AgainObjectDistances.is_a?(Module)
p AgainObjectDistances.is_a?(Class)
p "-" * 10
# todo 注意以下写法的输出结果
p again.is_a?(FirstDistances)
p AgainObjectDistances.is_a?(FirstDistances)
p AgainObjectDistances.superclass.is_a?(FirstDistances)
p AgainObjectDistances.superclass.class
p AgainObjectDistances.superclass
p 1.is_a?(Integer)
p Fixnum.is_a?(Integer)
p 1.class
p Class.superclass
