class FrontpageController < ApplicationController
  
  skip_before_filter :authenticate_user!
  
  def index
    @reports = Report.publik.limit(20)
  end

  def feed
    @report = Report.publik.sample
    respond_to do |format|
      format.js
    end
  end
end