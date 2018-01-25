require_relative '../lib/pencil.rb'

Rspec.describe Pencil do
  let(:pillar_pencil) {Pencil.new()}

  it "creates a new pencil" do
    expect(pillar_pencil).to be_an_instance_of Pencil
  end
end
