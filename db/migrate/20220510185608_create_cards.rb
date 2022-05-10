class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :state
      t.string :value
      t.integer :level
      t.references :resource
      t.references :user

      t.timestamps
    end
  end
end
