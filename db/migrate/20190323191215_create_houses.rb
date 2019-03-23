class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.float :price, limit: 2
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
