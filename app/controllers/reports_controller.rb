class ReportsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => :index

  respond_to :html, :json
  
  def index
    @reports = Report.page params[:page]
    
    respond_with @reports
  end
  
  def show
    @report = Report.find(params[:id])
    
    respond_with @report
  end
  
  def new
    @report = Report.new
    
    respond_with @report
  end
  
  def edit
    @report = Report.find(params[:id])
    
    respond_with @report
  end
  
  def create
    @report = Report.new(params[:report])
    
    if @report.save
      redirect_to @report, :notice => "#{@report.type} successfully created"
    else
      redirect_to new_report_path, :alert => "#{@report.type} could not be created"
    end
  end
  
  def update
    @report = Report.find(params[:id])
    
    if @report.update_attributes(params[:report])
      redirect_to @report, :notice => "#{@report.type} successfully updated"
    else
      redirect_to edit_report_path(@report), :alert => "#{@report.type} could not be updated"
    end
  end

  def delete
    @report = Report.find(params[:id])
    
    if @report.destroy
      redirect_to reports_path, :notice => "#{@report.type} deleted"
    else
      redirect_to @report, :alert => "An error has been"
    end
  end

  private

  def find_client
    @client = Client.find(params[:client_id]) if params[:client_id]
  end
end
