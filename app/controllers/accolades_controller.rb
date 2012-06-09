class AccoladesController < ReportsController

	def index
		@reports = Accolade.page params[:page]
    end

    def new
      @report = Accolade.new
    
      respond_with @report
    end

    def create
      @report = Accolade.new(params[:report])
    
      if @report.save
        redirect_to @report, :notice => "#{@report.type} successfully created"
      else
        redirect_to new_accolade_path, :alert => "#{@report.type} could not be created"
      end
    end

    private

    def find_report
    	@report = Accolade.find(params[:id])
    end
end
