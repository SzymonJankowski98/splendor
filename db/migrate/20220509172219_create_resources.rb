class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :type, null: false
      t.string :name, index: { unique: true }

      t.timestamps
    end
  end
end
