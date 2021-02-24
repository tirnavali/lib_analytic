class AddColumnToPersonel < ActiveRecord::Migration[6.0]
  def change
    add_column :personels, :active, :boolean
  end
end
