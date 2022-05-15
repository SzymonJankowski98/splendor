class CreateGameParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :game_participants do |t|
      t.integer :order
      t.references :user, null: false, foreign_key: true, index: true
      t.references :game, null: false, foreign_key: true, index: true

      t.timestamps
    end
    
    add_index :game_participants, [:order, :game_id], unique: true
  end
end
