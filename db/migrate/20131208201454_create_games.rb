class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :rolls

      t.timestamps
    end
  end
end
