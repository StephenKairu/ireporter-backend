class ReportSerializer < ActiveModel::Serializer
  attributes :id, :report_title, :report_message, :report_category, :report_status, :report_address, :user_id, :evidence
end
