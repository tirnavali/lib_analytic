class CreateReferenceAnalytics < ActiveRecord::Migration[6.0]
  def change
    create_table :reference_analytics do |t|
      t.string :reporter
      t.date :report_date
      t.integer :user_from_out
      t.integer :user_from_inside

      t.timestamps
    end
  end
end
