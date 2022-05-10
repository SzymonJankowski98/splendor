class CreateCardsResources < ActiveRecord::Migration[7.0]
  def change
    create_table :cards_resources do |t|
      t.references :card, null: false, foreign_key: true
      t.references :recource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
