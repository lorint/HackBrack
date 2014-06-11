class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.references :game, index: true
      t.integer :winning_team
      t.references :table, index: true

      t.timestamps
    end
  end
end
