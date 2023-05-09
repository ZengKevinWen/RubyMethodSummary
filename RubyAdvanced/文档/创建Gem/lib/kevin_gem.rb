class KevinGem
  def initialize(x,y)
    @x=x
    @y=y
  end

  def send_x
    p "-" * 10
    p @x
  end

  def send_y
    p "-" * 10
    p @y
  end
end

test = KevinGem.new(1,6)
test.send_x
test.send_y