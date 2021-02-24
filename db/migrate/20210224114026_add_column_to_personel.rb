class AddColumnToPersonel < ActiveRecord::Migration[6.0]
  def change
    add_column :personels, :passive, :boolean
  end
end
