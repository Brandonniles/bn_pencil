class Pencil
  attr_accessor :paper, :dura

  def initialize(paper:, dura:)
    @paper = ''
    @dura = dura
  end

  def get_str
    puts "Begin writing"
    msg = gets.chomp
  end

  def write(get_str)
    @paper += get_str
    @dura = @dura - get_str.length
  end

end
