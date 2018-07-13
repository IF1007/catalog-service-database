class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :title, null: false, index: true
      t.string :about
      t.string :launch_date
      t.string :poster_link
      t.timestamps
    end
  end
end
