class PubType < ApplicationRecord
  has_many :acquisition_analytics, inverse_of: :pub_type

  def to_s
    "#{pub_type_name}"
  end
end
