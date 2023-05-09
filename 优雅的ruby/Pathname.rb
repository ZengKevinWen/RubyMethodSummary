require 'Pathname'


Pathname("../demo.yml").extend
name = Pathname.new("demo.txt")
p name
