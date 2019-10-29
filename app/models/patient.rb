class Patient < ApplicationRecord
    has_many :appointmentts
    validates :name, presence:true
end
