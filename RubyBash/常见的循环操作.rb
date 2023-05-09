
# case when
#
# chomp(chu_qu_kong_ge)
demo = gets.chomp.to_i

case demo
when 1...5  #  1=<demo<=5
  p demo
when 1..5 # 1=<demo<5
  p "ok"
end

# while   until
while_until = gets.chomp.to_i
p while_until
# can_shu == true ----> yun_xing      注意   在ruby中 nil与false才是假

while  while_until != 0
  p "!0"
  break if while_until == 3   # break(跳出整个循环)
  next if while_until == 2    # next(结束当次循环下的语句)
  p '==2'
end
# until  can_shu == false ----> yun_xing
# until FALSE
#   p 'until'
# end
#
#
