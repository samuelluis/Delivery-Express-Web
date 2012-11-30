class CreateDeliveryBuses < ActiveRecord::Migration
  def change
    create_table :delivery_buses do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
