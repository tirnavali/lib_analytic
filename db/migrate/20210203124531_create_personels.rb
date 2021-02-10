class CreatePersonels < ActiveRecord::Migration[6.0]
  def change
    create_table :personels do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
