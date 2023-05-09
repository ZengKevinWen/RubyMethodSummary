# Hash
# todo 下列代码中很迷惑 目前不明白
h = Hash.new
p h
p h.object_id

h = Hash.new([])
p  h[0].object_id
p  h[1].object_id


# todo 这个实例化hash很迷惑  有问题 不明白
h = Hash.new([])
p '-' * 10
p h
p h.object_id
p '-' * 10
p (h[0] << 2).object_id
p h[0],h[0].object_id,h[1],h[:a],h[:b]
p h


p '------------------'
h = Hash.new { |h, k| h[k] = []}

h[:a] = 5
p h[:a].object_id,h[:b],h[:a],h[:b].object_id

h[:b] = 5
h[:c] = 6
p h
h[6] = 5
p h
p h[6]
p "=============="
p h.assoc(:a)

h.delete(:a)

p h.assoc(:a)

p h.empty?

p h.keys, h.value?(5), h.key?(6),h.values

p h.has_key?(5), h.has_value?(5)

p h.to_a

p h.merge({a: 5})  # megre!

h.each { |key, value| p [key, value] }
h.each_key { |v| p v }
# m default ----> Key
p h.select {|m,n| m == 6  }


require 'set'

p Set.new [1, 2]

p Set.new([1, 2]).add("foor")     # & |  <=


# ..闭区间        ...开区间(右边)