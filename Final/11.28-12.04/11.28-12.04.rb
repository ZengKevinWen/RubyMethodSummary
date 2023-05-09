# TODO
#  排序(sort sort_by) =>
#   https://blog.csdn.net/kavin_luo/article/details/72677726
#   TODO 左边 > 右边 => 1   相反 -1 等于 => 0
p 4.1 <=> 4
# todo  1. Array排序
p [5,6,7,2,5,45,64].sort{|x,y| y <=> x} # 倒叙 默认顺序
p [:demo, :name, :lastname, :ago].sort #TODO 数值中的symbol排序
# todo  2. Array嵌Array排序
array_array = [['a',3],['v',3],['d',4],['y',1],['asd',6]].sort_by! do |d|
  [d[1],[d[0]]]   # 顺序
end
p array_array
array_array = [['a',3],['v',3],['d',4],['y',1],['asd',6]].sort_by! do |k,y|
  [k,y]   # 顺序
end
p array_array

# todo 3. Array嵌Hash排序
array_hash = [{:x=>[1,5],:y=>2,:z=>"1a"},{:x=>[5,1],:y=>1,:z=>"ac"},{:x=>[3,5],:y=>3,:z=>'av'}]
array_hash.sort_by! do |p|
  [p[:x][0],p[:z]]  #TODO 都是顺序
end
p array_hash
p "-" * 10

# todo  4. Hash排序(单个) =>先将Hash转化为array嵌array 如 [[:mother, 55], [:father, 55] ,[:brother, 18], [:sister, 25]]
#   注意点 Hash结合sort_by排序 不能使用sort_by!方法
people = {
  :mother => 55,
  :father => 55,
  :brother => 18,
  :sister => 25
}
people = people.sort_by do |k,y|
  p "-" * 100
  p y
  p k[0]
  p k[1]
  p k
  [k[1],k[0]]
end
p people

# todo  5. Hash嵌Hash =>先将array转化为array嵌array [[:brother, {:name=>"abb", :age=>18}], [:me, {:name=>"hen", :age=>23}], [:sister, {:name=>"ndd", :age=>25}]]
people = {
  :brother => { :name => "abb", :age => 18 },
  :sister => { :name => "ndd", :age => 25 },
  :me => { :name => "hen", :age => 23 }
}
peoples = people.sort_by do |k|
  p k
  p k[0][-1]
  k[0][-1] #TODO 按照symbol中的某个字符排序
end
p peoples
peopless = people.sort_by do |k,v|
  p k
  v[:age]
end
p peopless
#TODO 总结： 1. sort_by排序会通过 do后面参数个数来匹配yield返回的数值 如 do|d| d => :mother => 55, 如 do |k,y| k=> :mother, y => 55或者参考 53行代码
#           2. 任何Hash类型排序(Hash嵌入其他类型)排序都会先转化Array => [第一个为key 第二个为value] 如上
#           3. 只要保证数据类型相同，格式相同，都可以按照上方体现进行排序(一步一步分割出需要排序的字段，然后进行排序)
#           4. 参考文档: https://blog.csdn.net/ppp8300885/article/details/49933305?spm=1001.2101.3001.6650.1&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-49933305-blog-72677726.pc_relevant_multi_platform_whitelistv4&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-49933305-blog-72677726.pc_relevant_multi_platform_whitelistv4&utm_relevant_index=1
#           5. https://blog.csdn.net/kavin_luo/article/details/72677726
p "=" * 100

#TODO Hash下fetch方法
h = { "a" => 100, "b" => 200 }
p h.fetch("a")                            #=> 100
p h.fetch("z")
p h.fetch("z", "go fish") # TODO 如果没有使用块并且没找到返回 第二个参数("go fish")
p h
p h.fetch("z"){|el| " 找到返回value else 返回#{el}"}# TODO 如果使用了块并且没找到 yield为第一个参数“z”
# TODO 参考文档：1. https://vimsky.com/examples/usage/ruby-hash-fetch-function.html
#              2. rubys hash fetch
p "=" * 100

# TODO FLE.Join方法
p File.join(File.dirname(__FILE__ ),"test", "join", "demo")
p File.join(File.dirname(__FILE__ ),["test", "join", "demo"])
p "=" * 100