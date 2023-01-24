class Report < ApplicationRecord
    belongs_to :user
    has_many :alerts

    # has_one_attached :evidence
    has_many_attached :evidence
end
