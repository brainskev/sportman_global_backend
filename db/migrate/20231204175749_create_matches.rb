class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :team1
      t.string :team2
      t.integer :score_team1
      t.integer :score_team2
      t.datetime :date
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
