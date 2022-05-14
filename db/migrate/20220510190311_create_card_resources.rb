class CreateCardResources < ActiveRecord::Migration[7.0]
  def change
    create_table :card_resources do |t|
      t.references :card, null: false, foreign_key: true, index: true
      t.references :resource, null: false, foreign_key: true, index: true
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
