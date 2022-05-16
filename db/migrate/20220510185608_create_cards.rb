class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name, index: { unique: true }
      t.string :type, null: false
      t.string :state
      t.integer :value
      t.integer :level
      t.references :resource, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
