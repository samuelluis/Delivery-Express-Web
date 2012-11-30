class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :code
      t.string :name
      t.string :supervisor_name
      t.references :delivery_bus

      t.timestamps
    end
    add_index :employees, :delivery_bus_id
  end
end
