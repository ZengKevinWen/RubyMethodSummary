
# todo (一)自定rb文件导入
# todo 自定义rb文件导入采用方案
# todo 1.require_relative导入
# todo 2.在文件(自定义)头部将当前目录作为ruby加载的路径 如下:
# File.dirname(__FILE__) 当前路径
# $LOAD_PATH.unshift方法的目的就是将当前目录作为ruby标准的加载路径
#todo 参考文档 http://t.zoukankan.com/huzhiwei-p-2408484.html
p File.dirname(__FILE__) # todo 在rails c下为 '.' Rails.root
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
p '-' * 100
require_relative  '../KevinPublic'


current_client = KevinPublic::ClientMysql.new("testeducoderweb").client
p "链接完成"

KevinPublic::PrintInformation.new("hellow world").info("1")
KevinPublic::PrintInformation.new("hellow world").debug


#todo 2===================================================================================================
#todo abs => abs()函数返回整数的绝对值
p [1,-5,-8,-5,-6,4,6,8,9,7,2,55,87,12,6].map(&:abs)


#todo ================================================================================================================
# ruby下 将实际字符串转化模块或者类使用如下  rails下调用 string.constantize  "User".constantize(或者safe_constantize).last == User.last
# 参考文档如 1. https://qa.1r1g.com/sf/ask/242480521/   2. http://www.zzvips.com/article/58752.html
p Object::const_get "KevinPublic"
p Module::const_get "KevinPublic"
p KevinPublic::const_get "ClientMysql"

#todo ===================================================================================================================
# 多看
# included方法(看文档感悟) https://www.5axxw.com/wiki/content/f4qtjb
# https://www.itdaan.com/blog/2014/09/10/71d32b12e62338590b1213ded42c072d.html
module Person
  # 钩子函数 执行Person时候执行
  def self.included(base)
    puts "#{base} included #{self}"
  end

  def name
    "My name is Andrew"
  end
end

class Member
  include Person  # todo include方法只调用一次  load(出现一次调用一次)
end
# todo 针对下面输出结果
# todo  第一次1Member.new,name时 在new方法时候应该会先include 模块 这时候触发钩子函数 同时include只导入一次 所以在第二次 new时候不调用钩子函数
# todo 问题 => 针对单独调用Person会是什么情况
puts Member.new.name
puts Member.new.name

# todo ==================================================================================================================
# flatten(参数)  不带参数 或者 参数 = nil,负数 全部展平
# 参考文档 https://vimsky.com/examples/usage/ruby-Array-method-i-flatten-rb.html
p [54,54,8,['asd',54,54,3,[5,6,5,4,8,7,9,2]]].flatten



# todo===================================================================================================================
# Date与Time类型(在rails中使用 在ruby中使用不知道为什么会报错！！！！)---可能是rails下有大量的gems
# 	1.
# 	Date.strftime("%u")  => 日期转化星期(0=>6  0表示周天)
# 	next_week
# 	next	next_weekday
# 	end_of_day
#
# 	2.
# 	ruby下 2022-10-24 23:59:59 +0800 2022-10-24 23:59:59都是 Time类型
# 	Mon, 24 Oct 2022 23:59:59 CST +08:00 Mon, 24 Oct 2022 23:59:59 都是Date类型
# 	Time类型与Date类型不能进行 +-运算(得到的单位根据相减时是否有分秒来表判断---小单位相减可能有问题)   可以进行比较 > < =
#
# 	3.application_help方法下 format_time方法
Date.strftime("%u")