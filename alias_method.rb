#todo  alias_method 与 alias用法
#1 给实例方法起别名
class AliasMethodPractice

  def ist_m_a
    puts "in #{__method__}"
  end

  def self.cls_m_x
    puts "in #{__method__}"
  end

  alias ist_m_b ist_m_a #<=============here

end

obj = AliasMethodPractice.new
obj.ist_m_a
obj.ist_m_b


#2 给类方法起别名
class AliasMethodPractice

  def ist_m_a
    puts "in #{__method__}"
  end

  def self.cls_m_x
    puts "in #{__method__}"
  end

  alias_method :ist_m_b, :ist_m_a

  puts "self=#{self}"
  puts "self.class=#{self.class}"
  # todo 使用alias_method与alias给类方法取别名 使用下列写法(文档中其他写法报错 )
  # 文档地址 :https://blog.csdn.net/fantaxy025025/article/details/84047526
  class << self
    puts "self=#{self}"
    puts "self.class=#{self.class}"
    alias_method :cls_m_y, :cls_m_x #todo 给class中内方法取别名时要写在 class << self下
  end

end

obj = AliasMethodPractice.new
obj.ist_m_a
obj.ist_m_b

AliasMethodPractice.cls_m_x
AliasMethodPractice.cls_m_y


# todo alias_attribute 给字段取别名
included do
  alias_attribute :public, :is_public
  enum public: { publiced: 1, hidden: 0 }
end
