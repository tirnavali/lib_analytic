class ChangePersonelIdNullable < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :journal_doc_analytics do |t|
        dir.up   { t.change :personel_id, :integer, optional: true }
        dir.down { t.change :personel_id, :integer, null: true }
      end
    end
  end
end
