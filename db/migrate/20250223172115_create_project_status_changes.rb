class CreateProjectStatusChanges < ActiveRecord::Migration[8.0]
  def change
    create_table :project_status_changes do |t|
      t.string :from, null: false
      t.string :to, null: false

      t.timestamps
    end
  end
end
