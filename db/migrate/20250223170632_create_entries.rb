class CreateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :entries do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :entryable_type, null: false
      t.integer :entryable_id, null: false

      t.timestamps
    end
  end
end
