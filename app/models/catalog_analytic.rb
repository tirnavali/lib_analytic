class CatalogAnalytic < ApplicationRecord
  belongs_to :catalog_report
  belongs_to :personel
  validates :new_entry, presence: true
end
