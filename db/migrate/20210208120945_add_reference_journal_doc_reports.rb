class AddReferenceJournalDocReports < ActiveRecord::Migration[6.0]
  def change    
    add_reference :journal_doc_analytics, :journal_doc_report
  end
end
