class CreateCardGames < ActiveRecord::Migration[7.0]
  def change
    create_table :cards_games do |t|
      t.references :card, null: false, foreign_key: true, index: true
      t.references :game, null: false, foreign_key: true, index: true
      t.references :game_participant, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
