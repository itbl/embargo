class DashboardController < ApplicationController

  def index
    @user = current_user
    
  end

  def feed
    @reports = Report.feed

    respond_to do |format|
      format.js
    end
  end
end
