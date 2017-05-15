class CreateBrokers < ActiveRecord::Migration[5.1]
  def change
    create_table :brokers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.attachment :profile_picture
    	t.string :password_digest

      t.timestamps
    end
  end
end
