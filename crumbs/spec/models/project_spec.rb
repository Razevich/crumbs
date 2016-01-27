require 'rails_helper'

describe Project do
  let(:project) {Project.new}

  it "Should belong to a Non Profit" do
    t = Project.reflect_on_association(:non_profit)
    t.macro.should == :belongs_to
  end

  it "Should have many Solutions" do
    t = Project.reflect_on_association(:solutions)
    t.macro.should == :has_many
  end

  it "Should have many Comments" do
    t = Project.reflect_on_association(:comments)
    t.macro.should == :has_many
  end

  it "Should have many Tags" do
    t = Project.reflect_on_association(:tags)
    t.macro.should == :has_many
  end

end