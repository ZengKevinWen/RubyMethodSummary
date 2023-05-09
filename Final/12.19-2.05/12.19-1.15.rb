class TestMethodMissing

  def method_missing(demo)
    p demo
    p "-" * 100
  end

  def test1
    p "ceshi"
  end
end

a = TestMethodMissing.new
a.test1

a.test1
a.test2
a.test3
a.test4
a.test5