class DashboardController < ApplicationController

  def index
    @user = current_user
    @reports = Report.feed.limit(10)
  end

  def feed
    @reports = Report.feed.limit(10)

    respond_to do |format|
      format.js
    end
  end
end
