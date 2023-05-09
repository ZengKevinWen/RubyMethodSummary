# TODO ruby内置模块Kernel下 raise方法

# todo
#TODO 1

def factorial(n)
  p n.is_a?(Integer)
  raise TypeError, "参数类型错误" unless n.is_a?(Integer)  # 类型error
  raise ArgumentError, "参数数值错误，请重新传值" if n < 1  # 取值错误
  return 1 if n == 1
  p "-" * 100
  n * factorial(n-1)
end

def test_exceptions
  begin
    # factorial 5
    p "抛出异常"
    raise "no" if true
    p "test"
  rescue TypeError => e
    p "#{e.class}:#{e},参数类型error"
  rescue ArgumentError => e
    p "#{e.class}:#{e},参数值错误"
  rescue EncodingError => e  # TODO RuntimeError raise默认异常类型
    p "#{e.class}:#{e},RuntimeError是默认异常错误"
  else # TODO 当Raise都没有发生 则执行
    p "未找到定义错误，其他错误"
  ensure
    #TODO 最后都要执行(不论 是否raise异常 与 异常是否异常类型接受=> 如果没有异常类型接受 先直接ensure代码正报错！！！！)
    p "打印错误信息结束"
  end
  p "结束"
end

p rand(10)




#TODO 异常处理视频 ruby进阶 14-列外处理
def test_exception(n)
  begin
    p "*" * 100
    raise "异常" if n == 0
    p "-" * 100
  rescue ArgumentError => e
    p "#{e}"
  end
  p "=" * 100
end
# TODO 注意抛出的异常类型一定要用固定的类型接收(或者采用Exception接收)--否则出现该异常时会报错 如下：
test_exception 0

test_exceptions