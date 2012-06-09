require 'spec_helper'

describe Client do
  before(:each) do
    @client = FactoryGirl.create(:client)
  end
  
  it "should be valid" do
    @client.should be_valid
  end
end
