class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  		t.string :email
  		t.datetime :bday
  	end
  end
end
