require 'spec_helper'

describe VotingController do

  describe "GET 'upvote'" do
    it "returns http success" do
      get 'upvote'
      response.should be_success
    end
  end

  describe "GET 'downvote'" do
    it "returns http success" do
      get 'downvote'
      response.should be_success
    end
  end

end
