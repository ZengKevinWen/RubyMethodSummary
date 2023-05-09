Gem::Specification.new do |s|
  s.name = 'kevin_gem'
  s.version = '0.0.1'
  s.date = '2022-12-28'
  s.summary = 'My first gem'
  s.description = "My first gem"
  s.authors = ['Zengkevin']
  s.email = '2443515052@qq.com'
  # todo 设定gem下有那些文件(lib下)
  s.files = %w(
            lib/kevin_gem.rb
          )
  # todo 当安装当前gem先判断当前客户是否安装hpricot 如果没有先安装hpricot的gem包
  s.add_runtime_dependency 'hpricot', '~> 0.8'
  s.homepage = 'https://rubygems.org/gems/kevin_gem'
  s.license = 'MIT'
end