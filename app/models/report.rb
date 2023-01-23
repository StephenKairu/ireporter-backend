class Report < ApplicationRecord
    belongs_to :user
    has_many :alerts
    has_many_attached :evidence
end
