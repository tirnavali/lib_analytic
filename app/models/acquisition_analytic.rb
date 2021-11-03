class AcquisitionAnalytic < ApplicationRecord
  belongs_to :acquisition_report
  belongs_to :pub_type, inverse_of: :acquisition_analytics
  validates :pub_arrived_as_supply, presence: true

  def self.orderit_pub_name(result)
  	result.includes(:pub_type).order('pub_types.pub_type_name ASC')
  end

end
