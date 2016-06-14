class AddUserNameToUsers < ActiveRecord::Migration
  def change #Anything written inside this is changed to SQL code and modifies the database
    add_column :users, :username , :string  #Add username column to the users table of the type 'string'
    add_index :users , :username , unique: true #First index the username for quick lookup.Next , ensure that the username is always unique.
  end
end
