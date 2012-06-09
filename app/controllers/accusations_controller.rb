class AccusationsController < ReportsController

    def index
		@reports = Accusation.page params[:page]
    end

    private

    def find_report
    	@report = Accusation.find(params[:id])
    end
end
