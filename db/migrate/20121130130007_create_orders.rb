class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :stop
      t.string :code
      t.references :branch
      t.references :supplier
      t.date :date
      t.string :status
      t.text :message
      t.string :type
      t.integer :box_quantity
      t.date :deliver_date
      t.time :deliver_time
      t.string :receiver_name
      t.has_attached_file :sign
      t.references :reason
      t.string :delivered_box_quantity

      t.timestamps
    end
    add_index :orders, :stop_id
    add_index :orders, :branch_id
    add_index :orders, :supplier_id
    add_index :orders, :reason_id
  end
end
