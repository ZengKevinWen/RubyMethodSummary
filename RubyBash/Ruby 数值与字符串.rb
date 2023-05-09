# to_f to_i to_s
#
#
#
p 1.5.round
p 1.6.round
# round 四舍五入
p 1.5.round
p 1.6.round


# floor  舍去法
p 1.6.floor


# ceil 进一法

p 1.2.ceil



# String   创建字符串特殊的方法

p a='5'

string = String.new("hello world 5")
p  "#{string}"

p %Q{ hello world}

p %q|hello world|

p string.empty?

p string.length

# 判断string是否包含a
p string.include?(a)
p a.to_c
p string == a

p string.methods