class Appointmentt < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
