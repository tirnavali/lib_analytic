class CatalogReport < ApplicationRecord
    has_many :catalog_analytics
    accepts_nested_attributes_for :catalog_analytics
end
