class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :description
      t.references :beast, foreign_key: true

      t.timestamps
    end
  end
end
