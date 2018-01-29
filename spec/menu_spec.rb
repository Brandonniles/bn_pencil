require_relative '../lib/module_methods'

RSpec.describe '.create_pencil' do
  context 'dura => 10, length => 8, eraser => 12' do
    let(:d) { 10 }
    let(:l) { 8 }
    let(:e) { 12 }

    it "returns Pencil with attributes" do
      expect(create_pencil(d,l,e)).to eql(Pencil.new(paper: 'blank', dura: 10, length: 8, eraser: 12))
    end
  end
end
