require 'rails_helper'

describe NonProfit do
  let(:non_profit) {NonProfit.new}

  it "Should have many Students" do
    t = NonProfit.reflect_on_association(:students)
    t.macro.should == :has_many
  end

  it "Should have many Solutions" do
    t = NonProfit.reflect_on_association(:solutions)
    t.macro.should == :has_many
  end

  it "Should have many Comments" do
    t = NonProfit.reflect_on_association(:comments)
    t.macro.should == :has_many
  end

  it "Should have many Projects" do
    t = NonProfit.reflect_on_association(:projects)
    t.macro.should == :has_many
  end

  it "Should have many Tags" do
    t = NonProft.reflect_on_association(:tags)
    t.macro.should == :has_many
  end

end