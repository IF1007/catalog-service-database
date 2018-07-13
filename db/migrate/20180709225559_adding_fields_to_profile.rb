class AddingFieldsToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :avatar_link, :string
  end
end
