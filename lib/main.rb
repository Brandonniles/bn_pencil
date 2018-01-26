require_relative './pencil'

paper = ''

x = Pencil.new(paper: 'test_paper')
x.write
puts x.paper

x.write
puts x.paper
