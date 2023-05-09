require 'yaml' # 其他格式转化yml


#todo 参考文档  http://www.qb5200.com/article/481859.html  https://www.jb51.net/article/244958.htm https://www.cnblogs.com/suren2017/p/9297576.html
# https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=baidu&wd=ruby%20YAML%E7%B1%BB&oq=ruby%2520%2526gt%253BNV%25E7%25B1%25BB&rsv_pq=ff42c77400081263&rsv_t=8424G%2FP2wNgGrrMXd5%2BCp48dFpegEcJIKmLNkSmhENju82EGZ5EcYLT5SHM&rqlang=cn&rsv_enter=1&rsv_dl=tb&rsv_btype=t&inputT=4257&rsv_sug3=19&rsv_sug1=16&rsv_sug7=100&rsv_sug2=0&rsv_sug4=5006
# 书籍案列

def format_time
  user = ENV["USER"]
  p user
  time = YAML.load("../demo.yml")
  p time
  p "-"
end
format_time
p "hello world".to_yaml
