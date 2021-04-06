class CatalogReport < ApplicationRecord
    has_many :catalog_analytics, dependent: :destroy
    accepts_nested_attributes_for :catalog_analytics, allow_destroy: true
    validates_associated :catalog_analytics
end
