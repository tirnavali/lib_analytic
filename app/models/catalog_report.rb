class CatalogReport < ApplicationRecord
  has_many :catalog_analytics, dependent: :destroy
  accepts_nested_attributes_for :catalog_analytics, allow_destroy: true
  validates_associated :catalog_analytics
#Sum method is take catalog_analytic's column name.
  def sum(column_name)
  	raise ActiveRecord::StatementInvalid, "Missing column name entered!" if column_name.is_a? Integer
  	begin
  		self.catalog_analytics.sum(column_name)
  	rescue ActiveRecord::StatementInvalid
  		raise ActiveRecord::StatementInvalid, "Missing column name entered!"
  	end	
  end
end
