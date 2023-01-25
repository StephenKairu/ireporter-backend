class ReportSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer

  attributes :id, :report_title, :report_message, :report_image, :report_category, :report_status, :report_address, :user_id, :evidence_urls

end
