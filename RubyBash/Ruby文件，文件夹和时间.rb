


# cp
# FileUtils.cp("test.rb","test_2.rb")

# rename
File.rename("test_5.rb","test_3.rb")




File.delete("test_3.rb")


#
dir = Dir.open("../ruby基础")
while dir.read
  p dir.read
end



# mkdir
Dir.mkdir("test")

# open mkdir
demo = Dir.open("test")

#delete mkdir
Dir.delete("test")

# Time
# Time 与 Date操作  差不多   差别在于 Time减法是以秒为单位 Date以天
#
m = Time.new
n = Time.now.strftime("%Y-%m/%d: %H=%M$%S")
p m, n

p m.year

p m.day

p m.month

#一年中的第多少天
p m.yday

# Date
# Time 与 Date操作  差不多   差别在于 Time减法是以秒为单位 Date以天
m = Date.today
p m

p m -3

p m -3 > Date.today


# DateTime---
# 与Time基本一样  出了 单位 前者为天 后则为秒  Data精确到天