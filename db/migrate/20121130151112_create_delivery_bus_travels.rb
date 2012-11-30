class CreateDeliveryBusTravels < ActiveRecord::Migration
  def change
    create_table :delivery_bus_travels do |t|
      t.references :travel
      t.references :delivery_bus
      t.float :odometer
      t.float :fuel
      t.date :date
      t.time :time
      t.has_attached_file :sign

      t.timestamps
    end
    add_index :delivery_bus_travels, :travel_id
    add_index :delivery_bus_travels, :delivery_bus_id
  end
end
