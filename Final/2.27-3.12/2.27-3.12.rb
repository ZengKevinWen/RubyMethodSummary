

# Array.each_slice(n) => 将Array内个数按照n个数切割 成为new_array 如下： 五个数值 两两一分割 => [1,1], [2,3] [4] 类似于 ActiveRecord中 find_each find_in_batches批量获取数据
new_array = [1,1,2,3,4]
new_array.each_slice(2) do |d|
  p d
end
batch_size = 500
ids = new_array
ids.each_slice(batch_size) do |id|
  p id
  # do something
end



# 6. Class下delegate方法
#  参考 rails 难点
