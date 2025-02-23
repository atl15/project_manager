class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :text, null: false, limit: 2000

      t.timestamps
    end
  end
end
