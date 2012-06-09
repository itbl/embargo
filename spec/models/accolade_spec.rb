require 'spec_helper'

describe Accolade do
  before(:each) do
    @accolade = Factory.create(:accolade)
  end
  
  it "should be valid" do
    @factory.should be_valid
  end
  
  
end