require 'spec_helper'

describe Company do
  before(:each) do
    @company = Factory(:company)
  end
  
  it "should be valid" do
    @company.should be_valid
  end
end
