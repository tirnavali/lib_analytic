class CreateJournalDocAnalytics < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_doc_analytics do |t|
      t.string :reporter
      t.date :report_date
      t.integer :new_entry
      t.integer :updated_entry
      t.integer :new_author
      t.integer :new_subject

      t.timestamps
    end
  end
end
