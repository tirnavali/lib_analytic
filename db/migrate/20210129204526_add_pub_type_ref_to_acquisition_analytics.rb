class AddPubTypeRefToAcquisitionAnalytics < ActiveRecord::Migration[6.0]
  def change
    add_reference :acquisition_analytics, :pub_type, null: true, foreign_key: true
  end
end
