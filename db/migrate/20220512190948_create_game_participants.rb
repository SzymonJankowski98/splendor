class CreateGameParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :game_participants do |t|
      t.integer :order
      t.references :user, null: false, foreign_key: true, index: true
      t.references :game, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
