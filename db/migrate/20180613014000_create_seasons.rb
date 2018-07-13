class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.belongs_to :serie, index: true
      t.integer :season_number, null: false, index: true
      t.string :title
      t.timestamps
    end
  end
end
