


# 测速next方法
def demo(item,value = nil)
  Array(item).each do |d|
    p "start"
    if d == value
      p d
      p "-" *10
      p "next调用开始"
      next # 调用next后 下方所有代码都不会执行(无论是否在代码块中)
      p "next后这里不会执行"
    end
    p "end 测试调用next方法后这里会不会执行"
  end
end

# todo 调用next后 next下所有代码都不会执行 不限制当前方法  注意点 循环场景中next只是结束当前循环
demo([1,5,7,9,4], 9)