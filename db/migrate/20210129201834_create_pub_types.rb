class CreatePubTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pub_types do |t|
      t.string :pub_type_name
      
      t.timestamps
    end
  end
end
