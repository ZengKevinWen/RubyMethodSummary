
# 1 exercise.rb文件下  include ScheduleJobUtil模块下 => 该模块应该是所有定时任务模块，统一将所有定时任务写在一个model下(写法与实现逻辑值得学习)
#     job = TASK_TYPE_JOB.stringify_keys[task_type].set(wait_until: execute_time).perform_later(self.id)注意写里面方法与写法
# 在去看一下 RailsJob机制



# 2  dev_local_exercise分支下 git_server.rb文件批量定义方法写法
# 批量自类定义方法  =>  define_method(class才可调用   不是instance_method方法)
class BatchCustomFunction

  class << self
    # define_method是class方法  不是instance_method
    # 对应 方法name
    # 对应 类调用该方法传递的参数
    %w( test1 test2 test3 test4 test5 test6 test7).each do |method|
      define_method method do |params|
        p self
        test_demo(method, params,1,"asd",{deno: 1})
      end


      def test_demo(method, params, *data)
        p method
        p params
        p data
      end
    end

  end

end
BatchCustomFunction.test1("demo")


# 10 rails下 test production development三种环境的切换与区别  => https://blog.csdn.net/weixin_30810239/article/details/98239495


# 11  Array.shuffle => 随机打乱顺序
  #  array.shuffle => new_array
  [1,23,4,5,6,["asd",1],"asd"].shuffle
  # array.shuffle! => array
  [1,23,4,5,6,["asd",1],"asd"].shuffle!


# 12 Rails下Time类内置change方法


# 13 object.object_id => 查看当前对象在内存的地址
p [1,223,445,543,[34,'34'],{}].object_id
p [1,223,445,543,[34,'34'],{}].shuffle.object_id
