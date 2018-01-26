require_relative './pencil'

x = Pencil.new(paper: 'test_paper', dura: 20)
  puts x.dura
  x.write(x.get_str)
  puts x.paper
  puts x.dura
