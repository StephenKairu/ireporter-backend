class User < ApplicationRecord
    has_secure_password 

    has_many :alerts 
    has_many :reports

    has_one_attached :avatar

end
