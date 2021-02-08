class AddReferenceToJournalDocAnalytic < ActiveRecord::Migration[6.0]
  def change
    add_reference :journal_doc_analytics, :JournalDocReport, null: false
  end
end
