class CreateAcquisitionAnalytics < ActiveRecord::Migration[6.0]
  def change
    create_table :acquisition_analytics do |t|
      t.references :acquisition_report, null: false, foreign_key: true
      t.integer :pub_arrived_as_supply
      t.integer :pub_arrived_as_gift
      t.integer :pub_bought
      t.integer :pub_saved_as_supply
      t.integer :pub_saved_as_gift
      t.integer :pub_saved_as_old

      t.timestamps
    end
  end
end
