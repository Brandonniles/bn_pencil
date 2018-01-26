require_relative '../lib/pencil'

RSpec.describe Pencil do
  let(:pillar_pencil) { Pencil.new(paper: 'sheet1') }

  it "creates a new pencil" do
    expect(pillar_pencil).to be_an_instance_of Pencil
  end

  it "a pencil will have paper" do
    expect(pillar_pencil.paper).to eql('sheet1')
  end

  # it "expects a pencil to have a write method" do
  #   expect(pillar_pencil.write()).to exist
  # end
end
