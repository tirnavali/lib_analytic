class CreateJournalDocReports < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_doc_reports do |t|
      t.integer :journal_count
      t.integer :document_count
      t.integer :unique_subjects_given
      t.integer :unique_author_given
      t.integer :author_given
      t.references :journal_doc_analytic, null: true, foreign_key: true
      t.string :reporter
      t.date :report_date

      t.timestamps
    end
  end
end
