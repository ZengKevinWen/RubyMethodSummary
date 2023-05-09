full_name = '/home/kevin/Ruby/ruby进阶/文档/File/File.rb'
#TODO File
p File.dirname(full_name)
p File.basename(full_name)
p File.basename(full_name,'.rb')
p File.extname(full_name)
p File.join("test1","test2",full_name)

p File.expand_path('~/ruby') # TODO ~(当前用户的根目录下) => /root
p File.exists? full_name
p File.directory? '/home/kevin/Ruby/ruby进阶/文档/File'
p File.file? '/home/kevin/Ruby/ruby进阶/文档/File'
#TODO size与size?  前者在未找到文件报错  后者 =>nil    如:  size => Integer  size? => nil或Integer
p File.size? '/home/kevin/Ruby/ruby进阶/文档/File/Files.rb'
p File.size '/home/kevin/Ruby/ruby进阶/文档/File/File.rb'
p "-" * 100


# TODO Dir
p Dir.pwd
p Dir.chdir('文档') #TODO 进入其他路径  成功 => 0 如下
p Dir.chdir('..') #TODO 进入其他路径  ..回到上一次路径 => 都是linux语句
p Dir.pwd

#TODO 输出当前当前路径下所有文件(一层) .=> 当前路径
p  Dir.entries('.')
p  Dir['*.rb']  #TODO 注意这个写法 找出当前路径下所有rb的文件(一层)
p Dir.pwd
