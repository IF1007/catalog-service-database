class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.belongs_to :viewer, index: true
      t.belongs_to :episode, index: true
      t.timestamps
    end
  end
end
