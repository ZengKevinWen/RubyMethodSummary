module KevinPublic

  class ClientMysql
    # todo 文档 https://www.rubydoc.info/gems/mysql2/0.5.4
    require 'mysql2'

    def initialize(current_database)
      @current_database = current_database
    end

    def client
      current_client = Mysql2::Client.new(
        host: 'rm-bp13v5020p7828r5rso.mysql.rds.aliyuncs.com',
        username: 'testeducoder',
        password: 'TEST@123',
        database: "#{@current_database}",
        encoding: 'utf8'
      )

      results = current_client.query("SELECT VERSION()")
      results.each do |row|
        puts row
      end
      current_client
    end

  end


  class PrintInformation

    # 打印日志
    # todo 文档 https://www.rubydoc.info/gems/logger/1.5.1
    require 'logger'

    def initialize(message,status=0)
      @message = message
      @status = status # type
    end

    # 提示信息
    def info(message)
      p "#####Info ----   #{message}"
    end

    def debug
      p "#####debug ----   #{@message}"
    end

    def warn
      p "#####warn ----   #{@message}"
    end

    def error
      p "#####error ----   #{@message}"
    end
  end



  # 用于测试
  def test
    p "test"
  end


end
p '该Gem包已经加载'