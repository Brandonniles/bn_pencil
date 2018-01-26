require_relative '../lib/pencil'

RSpec.describe Pencil do
  let(:pillar_pencil) { Pencil.new(paper: 'test_page', dura: 10) }

  it "creates a new pencil" do
    expect(pillar_pencil).to be_an_instance_of Pencil
  end

  it "a pencil will have paper" do
    expect(pillar_pencil.paper).to eql('')
  end


  # describe 'pillar_pencil.write' do
  #   it "adds a string to the existing string saved as paper" do
  #      allow($stdin).to receive(:gets).and_return("hey this is a test string")
  #      msg = $stdin.gets
  #
  #     expect(pillar_pencil.paper).to eq(msg)
  #   end
  # end

  # it "expects a pencil to have a write method" do
  #   expect(pillar_pencil.write()).to exist
  # end
end
