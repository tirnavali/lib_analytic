class AcquisitionAnalytic < ApplicationRecord
  belongs_to :acquisition_report
  has_one :pub_type
end
