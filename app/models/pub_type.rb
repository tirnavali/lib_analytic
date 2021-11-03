class PubType < ApplicationRecord
  has_many :acquisition_analytics, inverse_of: :pub_type
  scope :order_by_pub_name, -> {order(pub_type_name: :asc)}

  def to_s
    "#{pub_type_name}"
  end
end
