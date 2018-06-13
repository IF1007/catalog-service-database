class CreateViewers < ActiveRecord::Migration[5.1]
  def change
    create_table :viewers do |t|
      t.belongs_to :serie, index: true
      t.string :user_id, null: false, index: true
      t.string :status, null: false, index: true, default: 'watching'
      t.timestamps
    end
  end
end
