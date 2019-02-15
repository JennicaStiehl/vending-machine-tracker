class CreateSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.string :name
      t.float :price
      t.string :category
      t.timestamps
    end
  end
end
