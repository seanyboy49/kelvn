class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :full_name, :null => false 
  		t.string :username, :null => false 
  		t.string :email, :null => false, :uniqueness => true 
  		t.string :password_hash

  		t.timestamps(null: false)
  	end
  end
end
