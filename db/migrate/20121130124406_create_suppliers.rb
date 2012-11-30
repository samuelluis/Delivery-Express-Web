class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :code
      t.string :name
      t.string :city
      t.string :state
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
