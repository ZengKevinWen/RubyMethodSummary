
#todo 介绍ENV介绍与使用
# 文档 https://vimsky.com/examples/usage/ruby-ENV-class-ENV-rb.html
# 文档(目前看不懂) https://cloud.tencent.com/developer/section/1376606
#  ENV是一个类似于散列的环境变量访问器。(Parent:Object)
# if ENV["dmeo"] = "nil" => ENV.fetch("dmeo") 会 raise
p ENV.empty?
ENV["kevin"] = "你好"
p ENV["kevin"]
p ENV["kevins"]
p ENV.fetch("kevin")
p ENV.keys
p ENV.values
p ENV.fetch("kevins") # 当kevin是不存在 fetch这样写会报错 ENV["kevins"] => nil
