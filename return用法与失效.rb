# todo return常见操作
# todo 隐式 return
def implicit_return
  if true
    42
  else
    0
  end
end

p implicit_return

def rom_ebook
  '简单教程，简单编程'
end

p rom_ebook

#todo 显式 return
def explicit_return_call
  puts 'before return call'
  return
end

puts explicit_return_call



def explicit_return_calls
  puts 'before return call'

  return 'return call'

  puts 'after return call'
end

puts explicit_return_calls

# todo return失效  当赋值语句和 return 同时存在时，return 会被忽略
class MyClass
  def x=(y)
    return 42
  end
end

p MyClass.new.x = 21


# todo return 关键字只能使用在方法中，在其它语句中是不可以使用的，尤其是块 ( block ) 中，千万不要认为块中也可以使用 return 关键字
# todo 块中的 return 语句，虽然不会报错，但是结果也会让大家疑惑---无数据
[].each { |n| return n }

def hello
  puts 'Hello Mehdi!'.tap { |s| return s }
end

hello
p hello