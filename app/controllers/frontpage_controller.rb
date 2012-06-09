class FrontpageController < ApplicationController
  
  skip_before_filter :authenticate_user!
  
  def index
    @reports = Report.publik
  end
end