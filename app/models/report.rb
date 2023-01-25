class Report < ApplicationRecord
    belongs_to :user
    has_many :alerts

    # has_one_attached :evidence
    has_many_attached :evidence

    def evidence_urls
        evidence.map{|e| Rails.application.routes.url_helpers.url_for(e) }
    end
end
