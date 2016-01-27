require 'rails_helper'

describe Comment do
  let(:comment) {Comment.new}

  it "Should belong to a Non Profit" do
    t = Comment.reflect_on_association(:non_profit)
    t.macro.should == :belongs_to
  end

  it "Should belong to a Student" do
    t = Comment.reflect_on_association(:student)
    t.macro.should == :belongs_to
  end

  it "Should belong to a Project" do
    t = Comment.reflect_on_association(:project)
    t.macro.should == :belongs_to
  end

  it "Should belong to a Solution" do
    t = Comment.reflect_on_association(:solution)
    t.macro.should == :belongs_to
  end

end