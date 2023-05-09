def foo
  10.times { p "Call foo at #{Time.now} "}
  sleep(0.5)
end


def bar
  10.times { p "Call bar at #{Time.now} "}
  sleep(0.5)
end

def test
  10.times { p "Call test at #{Time.now} "}
  sleep(0.5)
end

p "*"*5 + "Start" + "*"*5
#TODO 创建线程
th1 = Thread.new {foo}
th2 = Thread.new {bar}
th3 = Thread.new {test}
# TODO 开始线程
th1.join
th2.join
th3.join
p "*"*5 + "End" + "*"*5

#TODO 查看上方打印信息 发现ruby的线程 一般不怎么好用
# 还得重新看bibi视频与文档

