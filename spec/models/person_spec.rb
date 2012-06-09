require 'spec_helper'

describe Person do
  before(:each) do
    @person = Factory.create(:person)
  end
  
  it "should be valid" do
    @person.should be_valid
  end
end
