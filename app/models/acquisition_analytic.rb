class AcquisitionAnalytic < ApplicationRecord
  belongs_to :acquisition_report
  belongs_to :pub_type, inverse_of: :acquisition_analytics
  validates :pub_arrived_as_supply, presence: true
end
