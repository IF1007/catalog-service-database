class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :title, index: true
      t.integer :episode_number, null: false, index: true
      t.belongs_to :season, index: true
      t.timestamps
    end
  end
end