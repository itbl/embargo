require 'spec_helper'

describe Accusation do
  before(:each) do
    @accusation = FactoryGirl.create(:accusation)
  end
  
  it "should be valid" do
    @factory.should be_valid
  end
  
  
end