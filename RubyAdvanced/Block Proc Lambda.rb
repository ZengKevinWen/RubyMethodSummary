


@m = 1
def foo
  a = 2
  p '--2'
  yield a if block_given? # todo 正常情况下 block_given?与yield是共同使用(否则该方法执行时必须要结合块操作)
  @m = 10
  p '----'
  yield '5' if block_given?
  @m = 100
  yield @m if block_given?
  p 'ok'
end
def foo1
  a = 2
end

p '----------' + @m.to_s

b = 4
# 1.	foo {|a| p a }
# 2. 	foo do |a|
# 		    p a

# todo yield回调 必须要结合块使用 如 方法一 do end    方法二 {代码 }
# todo 注意事项
# todo 1. 任何对象都可以使用代码块(block_gevin?判断 是否使用代码块)
# todo 2. 针对自定义方法使用代码块后 对象中必须结合yield方法 如 yield OR yield 参数(这里返回参数等于 do |a|中的a )
# todo 3. 在代码foo中定义的实例变量是全局变量(注意---在class中定义的@参数 是局部(调用并且不加@ ) 特别注意！！！！！)
foo do |a|
  p "start"
  p a,@m; if a == '5' or a == 100
          # p 'break'
          # break
          next if a == '5'
          p "end"
       end
end
p '------------'
p "=" * 100
foo do
  p "ok"
end
p "+" * 100
foo
# foo  do |a|
#   p a
# end
# b = 5
# p yield b
p @m

arry = %w(1 2 6)
# & 固定写法 记住
p arry.map(&:to_i)
p arry.map { |a|  p a }
# capitalize(转大写)
p ['A','b'].map(&:capitalize)
p ['A','b'].map(&:upcase)
p ['A','b'].map(&:downcase)


# todo return是针对方法的  black(块操作)是一种语法因此单独对object进行块操作会raise 所以最好写在某个function(注意一定要是自定义的def方法 each不行)下  如下自定义一个方法
def test_black_return(demo=[4,5,9,7,9])
  demo.each do |d|
    p d
    if d == 9
      return
    end
    p "继续"
  end
  p "---" * 100 # 没有被执行
end
test_black_return


def each_starts_with(*b,a)
  data = []
  b.each do |d|
    data << d if d.include?(a)
  end
  data
end