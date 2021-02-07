class CreateAcquisitionReports < ActiveRecord::Migration[6.0]
  def change
    create_table :acquisition_reports do |t|
      t.string :reporter_identity
      t.string :job_title
      t.integer :posted_books
      t.integer :refactored_items
      t.text :note
      t.date :date

      t.timestamps
    end
  end
end
