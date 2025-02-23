class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false, limit: 1000
      t.string :text, null: false, limit: 2000
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
