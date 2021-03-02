class CreateCatalogReports < ActiveRecord::Migration[6.0]
  def change
    create_table :catalog_reports do |t|
      t.date :report_date
      t.string :reporter
      t.string :reporter_title
      t.text :notes

      t.timestamps
    end
  end
end
