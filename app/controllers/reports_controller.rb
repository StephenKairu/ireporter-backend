class ReportsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    skip_before_action :authorize, only: [:index, :show, :create, :destroy, :update]

    def index 
        reports= Report.all
        render json: reports
        # render json: ReportSerializer.new(reports).to_json
    end 

    def show
        report = report_params 
        render json: report, status: :ok
    end 
    def create 
        report = Report.create!(reports_params) 
        # render json: report (include: [:evidence_urls]), status: :created
        if report
            render json: ReportSerializer.new(report).serializable_hash[:data][:attributes], status: :created
        else
            render json: report.errors, status: :unprocessable_entity
        
        end
    end 
    def update 
        report = report_params 

        reports = Report.update!(reports_params) 

        render json: report
    end

    private 
    def report_params 
        Report.find(params[:id])
    end
    def reports_params
        params.require(:report).permit(:report_title, :report_message, :report_category, :report_status, :report_address, :user_id, evidence: [] )
    end
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end

      def render_not_found_response
        render json: { error: "Report not found" }, status: :not_found
     end
end

