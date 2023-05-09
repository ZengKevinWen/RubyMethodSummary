a = []
p a.object_id
b = a
p b
p b.object_id
# todo 注意 为什么这里a与b的地址object_id会一样了！！！！！
p b.object_id === a.object_id
a << "foor"
p b, b.object_id
p a, a.object_id

c = Array.new(2)

p c

m = Array.new(2, 'abcd')

p m
#  注意看  重点
p "------------------这种方式创建的array下  中间的数值指向同一个object_id "
q = m[0][1] = '1'
p q,m
p "-----------------==================="


p '================================-------------------这种方式创建的array下 中间的数值指向不同的obejct_id'
m = Array.new(2) {"abcde"}
q = m[0][1] = '1'
p q,m

p '-----------------这种方式创建的array下 中间的数值指向不同的obejct_id'
q = %w(asd dasd dasd aega fdfs)
p %w(asd dasd dasd aega fdfs)
p q[0].object_id, q[1].object_id


# fetch(5 ,"ad") --find index(5) if nil else index(5) = ad
#   include? empty? push delete删除  delete_at(index)删除     uniq()--去重复
# uniq!  shuffle(随机变换数组中的位置    flatten(  占平一维数组))  each reverse_each
# each_with_index {|e,i| p [e, i]}   sort! sort     array.select {|e| e> 0 }  array.any? {|e| e> 0 }-----> false OR true
# array.compact! OR array.compact 去除nil数值