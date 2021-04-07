class AddColumnsToCatalogAnalytic < ActiveRecord::Migration[6.0]
  def change
    add_column :catalog_analytics, :tagged_pubs, :integer
    add_column :catalog_analytics, :secured_pubs, :integer
    add_column :catalog_analytics, :scanned_books, :integer
    add_column :catalog_analytics, :scanned_images, :integer
    add_column :catalog_analytics, :refactored_records, :integer
  end
end
