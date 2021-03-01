class CreateCatalogAnalytics < ActiveRecord::Migration[6.0]
  def change
    create_table :catalog_analytics do |t|
      t.integer :new_entry
      t.integer :duplicate_entry
      t.integer :subject_entry
      t.references :catalog_report, null: false, foreign_key: true
      t.references :personel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
