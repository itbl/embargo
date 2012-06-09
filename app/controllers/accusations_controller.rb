class AccusationsController < ReportsController

    def index
		@reports = Accusation.page params[:page]
    end

    def new
      @report = Accusation.new
    
      respond_with @report
    end

    def create
      @report = Accusation.new(params[:report])
    
      if @report.save
        redirect_to @report, :notice => "#{@report.type} successfully created"
      else
        redirect_to new_accusation_path, :alert => "#{@report.type} could not be created"
      end
    end

    private

    def find_report
    	@report = Accusation.find(params[:id])
    end
end
