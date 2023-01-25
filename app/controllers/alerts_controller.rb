class AlertsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    skip_before_action :authorize, only: [:index, :show, :create, :update]

    def index 
        render json: Alert.all
    end 
    def show 
        alert = alert_params 
        render json: alert, status: :ok
    end 
    def create 
        alert = Alert.create!(alerts_params) 
        render json: alert, status: :created
    end 
    def update 
        alert = alert_params 

        alerts = Alert.update!(alerts_params) 

        render json: alert
    end

    private 
    def alert_params 
        Alert.find(params[:id])
    end
    def alerts_params
        params.permit(:title, :message, :image, :lat, :lng, :status, :user_id, :report_id )
    end
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end

      def render_not_found_response
        render json: { error: "Alert not found" }, status: :not_found
     end
end
