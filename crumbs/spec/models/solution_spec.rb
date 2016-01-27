require 'rails_helper'

describe Solution do
  let(:solution) {Solution.new}

  # it "Should belong to a Non Profit" do
  #   t = Solution.reflect_on_association(:non_profit)
  #   t.macro.should == :belongs_to
  # end

  # it "Should belong to a Student" do
  #   t = Solution.reflect_on_association(:student)
  #   t.macro.should == :belongs_to
  # end

  it "should belong to a polymorpic" do
    t = Solution.reflect_on_association(:solutionable)
    t.macro.should == :belongs_to
  end

  it "Should have many Comments" do
    t = Solution.reflect_on_association(:comments)
    t.macro.should == :has_many
  end

end