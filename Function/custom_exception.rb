module KevinException

  class MainException

    def self.most
      p "KevinException::MainException::most方法内部"
      p 'end'
      yield
    rescue Exception => e
      p "错误"
    end
  end


end
p "start"




