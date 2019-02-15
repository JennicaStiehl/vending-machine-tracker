class CreateMachineSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :machine_snacks do |t|
      t.references :snacks
      t.references :machines
      t.timestamps
    end
  end
end
