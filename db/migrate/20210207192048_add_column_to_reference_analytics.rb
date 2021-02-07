class AddColumnToReferenceAnalytics < ActiveRecord::Migration[6.0]
  def change
    add_column :reference_analytics, :online_patron_outer, :integer
    add_column :reference_analytics, :online_patron_inner, :integer
    add_column :reference_analytics, :open_access_sessions, :integer
    add_column :reference_analytics, :depot_book_usage, :integer
    add_column :reference_analytics, :depot_journal_usage, :integer
    add_column :reference_analytics, :depot_newspaper_usage, :integer
    add_column :reference_analytics, :book_on_loan, :integer
    add_column :reference_analytics, :book_renew, :integer
    add_column :reference_analytics, :book_withdraw, :integer
    add_column :reference_analytics, :book_on_loan_mp, :integer
    add_column :reference_analytics, :book_on_loan_retired_mp, :integer
    add_column :reference_analytics, :book_on_loan_inner_patron, :integer
    add_column :reference_analytics, :book_use_mp, :integer
    add_column :reference_analytics, :book_use_retired_mp, :integer
    add_column :reference_analytics, :book_use_inner_patron, :integer
    add_column :reference_analytics, :microfilm_use_mp, :integer
    add_column :reference_analytics, :microfilm_use_retired_mp, :integer
    add_column :reference_analytics, :microfilm_use_inner_patron, :integer
    add_column :reference_analytics, :microfilm_use_outer_patron, :integer
    add_column :reference_analytics, :microfilm_income, :float
    add_column :reference_analytics, :photocopy_a4_unpaid, :integer
    add_column :reference_analytics, :photocopy_a3_unpaid, :integer
    add_column :reference_analytics, :photocopy_a4_paid, :integer
    add_column :reference_analytics, :photocopy_a3_paid, :integer
    add_column :reference_analytics, :digitalized_pages, :integer
    add_column :reference_analytics, :photocopy_income, :float
    add_column :reference_analytics, :notes, :text   
    add_column :reference_analytics, :reporter_job_title, :string
   


    

















  end
end
