require 'rails_helper'

describe Tag do
  let(:tag) {Tag.new}

  it "Should belong to a Non Profit" do
    t = Tag.reflect_on_association(:non_profit)
    t.macro.should == :belongs_to
  end

  it "Should belong to a Project" do
    t = Tag.reflect_on_association(:project)
    t.macro.should == :belongs_to
  end

end