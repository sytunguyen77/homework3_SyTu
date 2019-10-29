class Physician < ApplicationRecord
    has_many :appointmentts, inverse_of: :physician
    has_many :offices, inverse_of: :physician
    accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :appointmentts, reject_if: :all_blank, allow_destroy: true
end
