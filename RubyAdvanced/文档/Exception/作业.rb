array = [ 1, 6, 4, 'string', 5, "aa", "bb", "aa", 15 ,21 ,1.26, '66', {:name => "demo"} ]

#TODO 将array进行两两相加 相加成功直接打印 else 打印错误信息

#TODO
sum = 0
array.each_slice(2) do |d|
  p d
  begin
    p d[0] + d[1]
  rescue TypeError,NoMethodError => e
    puts "Invalid summation of #{d[0]} + '#{d[1]}'" #TODO 注意这个要加''
    p e
  ensure
    sum += 1
  end
end
p sum