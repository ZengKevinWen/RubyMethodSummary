a = [4,5,8]

p b = Array.new(4)

p b_ = Array.new


p a & b

p a + b

p a || b


p a.length

p a[a.length] = 5

p a.push(5)

# 从最后面删除num个
p a.pop(2)

p a.insert(1, 100)

p a.insert(2, 100)

# 指定删除某元素---all
p a.delete(100)

p a



# hash
a = Hash.new
a[:name] = "kevin"
a[:email] = "2443515.52@qq.com"
a["name"] = "alice"
a["email"] = "1323841527@qq.ocm"
p a, a[:name], a[:email], a["email"], a["name"]

p "---------------------"

a = {}
a[:name] = "kevin"
a[:email] = "2443515.52@qq.com"
a["name"] = "alice"
a["email"] = "1323841527@qq.ocm"
p a, a[:name], a[:email], a["email"], a["name"]