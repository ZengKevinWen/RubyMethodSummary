p Time.now.strftime("%Y::%m-%H-%M-%S")
p Time.now.strftime("%d")

p Time.included_modules.include?(Comparable)
p Time.superclass
require 'date'
p Date.superclass
p DateTime.superclass
p DateTime.included_modules
p DateTime.ancestors

today =  Date.today
p today.next_day 2
p today.prev_day 2
p today.prev_year 5

today2 = Time.now
p today2.day
p today2.year
p today2.month
p today2.min  # 分钟
p today2.sec  # 秒
p today2.zone
p today2 + 3 # todo 增加 三秒
p today + 3 # todo 增加 三天  DateTime同样

#TODO  Date DateTime 与一些Time的方法
require 'time'

# TODO bibi ruby进阶17视频多看 还有其他方法

#todo  24分之8  => 全球24时区 北京东8 西边 -
p Rational(8,24)

#TODO 模拟北京地区时间
ENV["TZ"] = "Asia/Shanghai"
p Time.now