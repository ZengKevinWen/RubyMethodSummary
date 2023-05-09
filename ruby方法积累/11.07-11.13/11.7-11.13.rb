# todo 1.测试string类型特殊写法如下：
#  if找到并大小写相同则输入  else nil
test_string = "测试当前string中 测试特殊写如下: hello  world Kevin Welcome come on 长沙 That is every happy city  "
# 可用于判断string中是否存在某个小型string
p test_string["ke"] # 小写
p test_string["Ke"] # 大写
p test_string[" "]
p test_string["on长沙"]

# todo 2. Array.shift()  s它删除self的第一个元素( => old_array)，如果数组为空，则返回null或nil
a = [[5,[5,6,5,"sad"],{"demo": 5}],5,6,9,7,9,8]
p a.object_id
p a.shift
p a
p a.object_id

# todo 删除最前面2个self
p a.shift(2)
p a
# todo 删除5个(多余剩下的4个) => 删除剩余的4个
p a.shift(5)
# todo 删除【】 有点奇怪 如果 a=[] a.shift => nil  a.shift(Fixnum) => []
p "-" * 100
p a.shift
p a.shift(5)
p a

# todo  start_with?(*args)
demo = ["kevin", "hello", "parst", "asd"]
p demo.map{|d|  d if d.start_with?("ke") }.select { |d| d.nil? }.uniq
