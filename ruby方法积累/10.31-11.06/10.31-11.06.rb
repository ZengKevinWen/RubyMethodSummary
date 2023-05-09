#todo ##############################################################
# 1.compact
new_array = [nil,nil,5,6]
p new_array.compact!
new_array2 = [5,6,7,9,5,3,49,2]
new_array3 = [54,647,52,[nil],[nil,542,[545]]]
p new_array3.compact! #todo  不支持嵌层数值数据 compact前首先flatten展平
p new_array2.compact!
p '*' * 20


#todo ##############################################################
# 2.ruby端输入linux操作
# system(获取直接是否成功) exec(执行后马上终止程序 无返回值) ``(仿序号=>获取执行linux代码后的结果--->注意 只能得到标准的输出（stdout）而不能得到标准的错误信息(stderr),) 等
# 参考文档 http://www.qb5200.com/article/267537.html(一个6中执行linux方法)
def test_linux_option(item=nil)
  # system
  p "测试system"
  system_demo = system 'pwd'
  p $? #todo 具体说明看参考文档 http://www.qb5200.com/article/267537.html
  p system_demo
  # 方序号 ``  等于 %x
  p "测试 `` "
  date = `date`
  p $?
  p $?.to_s.split(" ")[1] # 进程号
  p date
  # exec
  p "调用exec方法执行linux操作后 会结束整个进程(ruby结束执行)--同时使用exec无法判断命令是否成功"
  exec "pwd"
end
test_linux_option
p "-" * 20


#todo ##############################################################
# 3.ruby实现.sql导入功能
# 参考文档 https://www.yisu.com/ask/2943.html