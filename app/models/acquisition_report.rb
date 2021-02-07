class AcquisitionReport < ApplicationRecord
    has_many :acquisition_analytics, inverse_of: :acquisition_report, dependent: :destroy
    accepts_nested_attributes_for :acquisition_analytics
    validates :reporter_identity, :note, presence: true, length: {minimum: 5}
end
