class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :file_uid, null: false
      t.references :attachable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
