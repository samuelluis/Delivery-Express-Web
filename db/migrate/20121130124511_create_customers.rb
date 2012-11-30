class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code
      t.string :name
      t.string :city
      t.string :phone
      t.text :address_1
      t.text :address_2

      t.timestamps
    end
  end
end
