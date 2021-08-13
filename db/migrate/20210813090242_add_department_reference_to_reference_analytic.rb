class AddDepartmentReferenceToReferenceAnalytic < ActiveRecord::Migration[6.0]
  def change
    add_reference :reference_analytics, :department, null: true, foreign_key: true
  end
end
