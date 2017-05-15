class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :file_name
      t.attachment :image
      t.integer :project_id

      t.timestamps
    end
  end
end
