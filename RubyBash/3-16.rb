a = 1
p a.methods
p a.to_s
p "hello world #{a}"
p a.nil?
p ''.nil?
p ''.nil?
p '    '.length
p ''.empty?
b = "100\n"
p b
p b.chomp.to_i

p 'p puts print的区别 '
input = gets("hello")
p input
p '---============'
inputs = ''
# if ------ true chun_zai kong('') -----> zhi-xing
# if ------ false nil ------> bu_zhi_xing
if input
    puts input
end
inputs_2 = false
if inputs_2
    p input
else
end
p 'a'
