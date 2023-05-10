

# 总结: block_given? 方法主动判断上一级方法是否进行块调用
#注意 each 方法可以对每个数据进行迭代器 等操作 这里暂不实现传入数值操作
def block_test
  p "start"
  content = block_given? ? "block_test使用块模式" : "block_test没有使用块模式"
  p content
  block_given? ? 'yes' : 'no'  # (当任何方法使用块时(或者对象.方法等)，必须要调用 yield回调否者会报错(这个目前自己不确定)  多个yield会进行多次回调 即如上会多次执行块中代码)
  block_given? ? yield : 'no'  # 使用yield 必须 结合块操作
  "no"
end

# 1. block_test =>  打印 start block_test没有使用块模式 no
block_test



# 2. block_test { p "hello world" } => 打印 start block_test使用块模式 hello world(注意 如block_test中存在多个yield会多次进行 {} 中 p " hello world "代码)
block_test do
  p "hello world"
end

block_test { p " hello "}

class Test
  def block_test(demo)
    p "start"
    content = block_given? ? "block_test使用块模式" : "block_test没有使用块模式"
    p content
    block_given? ? 'yes' : 'no'  # (当任何方法使用块时(或者对象.方法等)，必须要调用 yield回调否者会报错(这个目前自己不确定)  多个yield会进行多次回调 即如上会多次执行块中代码)
    block_given? ? yield : 'no'  # 使用yield 必须 结合块操作 回调执行后 在继续执行下面代码
    "no"
    p demo
    p '0'
  end
end

a =Test.new
p "=" * 10
a.block_test("m") do
  p '--' * 100
end
a.block_test('hello world')

