class AccoladesController < ReportsController

	def index
		@reports = Accolade.page params[:page]
    end

    private

    def find_report
    	@report = Accolade.find(params[:id])
    end
end
