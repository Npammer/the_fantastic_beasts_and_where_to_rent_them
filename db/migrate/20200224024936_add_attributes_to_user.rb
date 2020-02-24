class AddAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :bio, :text
    add_column :users, :profile_picture, :string
  end
end
