class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.belongs_to :serie, index: true
      t.string :user_id, null: false, index: true
      t.integer :rating
      t.string :comment
      t.timestamps
    end
  end
end
