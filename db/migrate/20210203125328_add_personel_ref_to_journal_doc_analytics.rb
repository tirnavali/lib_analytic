class AddPersonelRefToJournalDocAnalytics < ActiveRecord::Migration[6.0]
  def change
    add_reference :journal_doc_analytics, :personel, null: true, foreign_key: true
  end
end
