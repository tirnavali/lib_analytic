class RemoveForeignkeyFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column  :journal_doc_reports, :journal_doc_analytic_id
  end
end
