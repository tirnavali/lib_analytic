class RemoveReferenceJournalDocReport < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :journal_doc_reports, column: :journal_doc_analytic_id
    
  end
end
