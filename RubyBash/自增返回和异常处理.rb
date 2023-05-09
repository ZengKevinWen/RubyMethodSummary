
m = 0
s = 0
while m<5001
  s += m
  m += 1
end
p s


q = 0
(1..5000).each do |p|
  q += p
end
p q



require './test.rb'    #
o = add 5, 6  #奇怪  一定要先赋值才可以打印 直接打印不行
p o
a = 100
p a.class.class
p a.class
b = '22'
p b.class
p b.class.class

a = String.new"hello world"
p String.methods

p a

# while  true
#   begin
#     b = gets.chomp.to_i
#     p a/b   # / ===> 取商 % ===>     取余
#   rescue Exception => e
#     p "#{e}  error!"
#   end
#
# end




