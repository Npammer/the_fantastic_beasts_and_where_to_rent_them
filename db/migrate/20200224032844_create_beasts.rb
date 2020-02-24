class CreateBeasts < ActiveRecord::Migration[5.2]
  def change
    create_table :beasts do |t|
      t.string :name
      t.string :category
      t.integer :dangerousness
      t.integer :price
      t.string :location
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
