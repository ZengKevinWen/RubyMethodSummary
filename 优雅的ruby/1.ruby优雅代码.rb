

# def say_hello_1
#   p 'say_hello_1'
# end
#
# def say_hello_2
#   p 'say_hello_2'
# end
#
# def say_hello_3
#   p 'say_hello_3'
# end

# todo 这个还得看ruby自带解析原理
['1', '2', '3'].each do |a|
  p a
  # todo 批量自定义一定规则方法
  define_method "say_hello_#{a}" do
    p "hi, #{a}"
  end
end

say_hello_1
say_hello_2
say_hello_3


