class ReportSerializer < ActiveModel::Serializer
  attributes :id, :report_title, :report_message, :report_image, :report_status, :address, :user_id 
end
