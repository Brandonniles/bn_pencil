require_relative '../lib/pencil'

RSpec.describe Pencil do

  let(:pillar_pencil) { Pencil.new(paper: 'test_page', dura: 10) }
  let(:second_pencil) { Pencil.new(paper: 'test_page', dura: 0) }

  it "#dura returns a pencil's durability" do
    expect(pillar_pencil.dura).to eql(10)
  end

  it "#dura should be an integer" do
    expect(pillar_pencil.dura).to be_an(Integer)
  end

  # it "#write should sub characters for ' ' when dura == 0" do
  #   expect(second_pencil.write).to match(/a*\s/)
  # end

  it "#write('hey') should change the value of dura" do
    expect{ pillar_pencil.write('hey') }.to change{pillar_pencil.dura}.by(-3)

  end
end
