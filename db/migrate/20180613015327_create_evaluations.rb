class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.belongs_to :serie, index: true
      t.belongs_to :profile, index: true
      t.integer :rating
      t.string :comment, null: false
      t.timestamps
    end
  end
end
