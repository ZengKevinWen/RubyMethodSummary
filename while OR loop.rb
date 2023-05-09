@a = 0
@b = [5,5,4,5,463,1,3]
# 当@a等于10才停止执行
# todo  注意   loop语法好像不可与 对象·loop 而是单独使用
loop do ||
  @a = @a + 1
  p "ok"
  break  if @a == 10
end




# 当@a等于十一才执行
begin
  p "end"
  @a += 1
end  while @a == 11