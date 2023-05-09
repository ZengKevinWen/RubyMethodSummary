if File.exists?("/home/kevin/Ruby/ruby进阶/文件夹测试")
else
  Dir::mkdir("/home/kevin/Ruby/ruby进阶/文件夹测试")
end
p Dir.pwd
File.rename("/home/kevin/Ruby/ruby进阶/文件夹测试","/home/kevin/Ruby/ruby进阶/文件夹测试8")
FileUtils.r.rename("/home/kevin/Ruby/ruby进阶/文件夹测试2",'/kevin')