class RemoveReferenceJournalDoc < ActiveRecord::Migration[6.0]
  def change
    remove_reference :journal_doc_reports, :journal_doc_analytic, foreign_key: true
  end
end
