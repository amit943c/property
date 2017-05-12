class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.string :property_type
    	t.integer :price
    	t.integer :area
    	t.string :facing
    	t.string :age_of_property
    	t.attachment :image

      t.timestamps
    end
  end
end
