#todo 文件常见操作练习===================================
# 参考文档
# https://www.cnblogs.com/hello-ruby/p/15721960.html
# http://t.zoukankan.com/grj1046-p-3669203.html(自定义递归删除操作)
# https://www.qedev.com/dev/194892.html(创建文件夹并设置权限)
# https://www.jc2182.com/ruby/ruby-io.html(IO模块(stdin stdout)是 FILE模块的父类)


# todo###################################### 创建文件   创建文件时 puts与write方法使用作用还有些问题
# 当前路径
p File.dirname(__FILE__ )

# w+(写读) 覆盖内容(不是追加内容) 或者创建新文件
f_write = File.new("#{File.dirname(__FILE__)}/new1.txt","w+")
f_write.puts(" w+模式  put方法覆盖内容")
f_write.write(" w+模式 使用write方法后 当前文件的所有w方法都是追加内容\n 袁莎莎是大懒猪") # todo 使用write后 下一次写不主动换行
f_write.puts(" w+模式 write方法追加内容\n 袁莎莎是大懒猪")
f_write.close

# a+(写读) todo (创建文件或者追加内容)
f_a = File.new("#{File.dirname(__FILE__)}/new_a.txt","a+")
f_a.puts("a+模式下  puts方法追加")
f_a.write("a+模式下 所有写方法都是追加 ")
f_a.close


# r+(写读)  todo 注意 r+(r)只用于已经创建的文件进行写读(也是覆盖--没找到报错)
f_read = File.new("#{File.dirname(__FILE__)}/new2.txt","r+")
f_read.puts(" r+模式  put方法覆盖内容\n 袁莎莎是懒猪")
f_read.write(" r+模式  使用write方法后 当前文件的所有w方法都是追加内容\n 袁莎莎是大懒猪")
f_read.puts(" r+模式  put方法覆盖内容\n 袁莎莎是懒猪")
p File.file?(f_read)

# todo ======================================================================================= 文件操作
f_write=File.open("#{File.dirname(__FILE__)}/new1.txt","r+")
# 打印文件一行数据
p f_write.readlines[0] #第一行数据 readlines(io模块中方法)
p f_write.lineno #todo 单独输出为0 循环输出看如下:
f_write.each do |d|
  p "#{f_write.lineno}.", d
  p d
end
f_write.puts("在次说一遍莎莎是大傻逼") #todo 有个注意点
f_write.close


File.rename("#{File.dirname(__FILE__)}/new_a.txt", "#{File.dirname(__FILE__)}/new_aa.txt")
File.delete("#{File.dirname(__FILE__)}/new_aa.txt")

p '+' * 100
#todo+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 目录操作
# new(if dir exists else raise)
Dir.mkdir("#{File.dirname(__FILE__ )}/dir_ceshi")  # response => Fixnum类型
# todo 注意点 FIle.new创建文件会创建选择路径中所有目录与文件 如： 下创建ceshi.txt文件会从上到下先创建dir_ceshi目录 47行代码中已经创建该目录 继续使用默认创建会raise 异常要设置创建方式 w+(覆盖余创建)
File.new("#{File.dirname(__FILE__ )}/dir_ceshi/ceshi.txt", "w+")
# 遍历目录 entries
p Dir.entries("#{File.dirname(__FILE__ )}/dir_ceshi") #todo 目录下所有文件name
Dir.entries("#{File.dirname(__FILE__ )}/dir_ceshi").each do |file|
  p file
end
# delete(if current_dir has file raise ) todo 当目录下存在文件不允许rmdir方法删除(要自定义遍历删除文件方法)
Dir.rmdir("#{File.dirname(__FILE__ )}/dir_ceshi")


#todo ================================自定义删除文件夹下所文件与当前文件夹
def deleteDirectory(dirPath)
  if File.directory?(dirPath)
    puts "是文件夹"
    Dir.foreach(dirPath) do |subFile|
      if subFile != '.' and subFile != '..'
        deleteDirectory(File.join(dirPath, subFile))
      end
    end
    Dir.rmdir(dirPath)
  else
    File.delete(dirPath)
  end
end
puts "删除完毕"

#todo ==================================自定义创建文件(接口上传文件使用)
def write_file(path, io)
  p io.original_filename # name
  # open允许块操作 new不允许
  File.open(path.to_s + io.original_filename.to_s, 'wb') do |file|
    if io.respond_to?(:read)
      io.rewind
      while buffer = io.read(8192)
        file.write(buffer)
      end
    else
      file.write(io)
    end
  end
end