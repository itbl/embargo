require 'spec_helper'

describe Accusation do
  before(:each) do
    @accusation = FactoryGirl.create(:accusation)
  end
  
  it "should be valid" do
    @accusation.should be_valid
  end
  
  
end