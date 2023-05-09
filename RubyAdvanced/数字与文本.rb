a = "abcdefdsad"

p a.reverse

p a.include?(a)
# 最前面的一个
#
p a.index("a")
p a[5]

# (更换第一个)
p a.sub('a', 'm')

b = 55

p b.even?

p b.odd?

c = 2.6561

p c.object_id
p c.round
p c.object_id
p c.round(2)

p c.object_id

# String --> Smyple
p a.to_sym

p a.size

p a.methods
# 对象.def?---->  false OR true    对象.def!-----> 在该值上改变