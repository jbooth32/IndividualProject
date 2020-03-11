class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :winner
      t.string :loser
      t.integer :w_score
      t.integer :l_score
      t.string :date

      t.timestamps
    end
  end
end
