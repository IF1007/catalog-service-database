class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.belongs_to :serie, index: true
      t.belongs_to :episode, index: true
      t.integer :season_number, index: true, null: false
      t.timestamps
    end
  end
end
