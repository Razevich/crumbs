require 'rails_helper'

describe Student do
  let(:student) {Student.new}

  it "should have many Non Profits" do
    t = Student.reflect_on_association(:non_profits)
    t.macro.should == :has_many
  end

  it "Should have many Solutions" do
    t = Student.reflect_on_association(:solutions)
    t.macro.should == :has_many
  end

  it "Should have many Comments" do
    t = Student.reflect_on_association(:comments)
    t.macro.should == :has_many
  end

end