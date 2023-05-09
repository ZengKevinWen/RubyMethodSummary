str = "hello world"
def str.frist
  p self.object_id
end

str.frist


def str.secound
  p self
end

str.secound


def old_name
  "old_name"
end
# todo namespace
# alias_method :new_name , :old_name
alias :new_name  :old_name

p new_name

# todo 注意 一般格式必须按照该要求写(或者这个格式就有问题)
def test(a,*b,c,d)
  p "测试 *参数 => array类型"
  p a
  p b
  p c
  p d
  p "end"
end
p "-" *1000
test(1,{"old": "5"},{"name": "kevin"},54,5)
test(1,1215,5,6,4,6,8,5,22,54,5)

def demo(a, b, *c, **d)
  p a
  p b
  p c
  p d
end
# todo **d参数(不知道怎么格式)
demo(1,2,2,2,2,2,4, {:name => 'name'},{"demo": "demo"} )
def hash(h)
  h.each { |key, value| p key,value}
  p "----------"
  h.each do |k, v|
    p k ,v
  end
end

hash a: 5, b: 6