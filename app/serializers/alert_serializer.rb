class AlertSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :image, :lat, :lng, :status, :user_id, :report_id
end
