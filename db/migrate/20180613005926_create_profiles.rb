class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :user_id, null: false, index: true
      t.string :birthday
      t.string :about
      t.timestamps
    end
  end
end
