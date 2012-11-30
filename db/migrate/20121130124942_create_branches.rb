class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :code
      t.string :name
      t.string :city
      t.string :state
      t.string :phone
      t.text :address
      t.references :customer
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_phone_2
      t.string :contact_2_name
      t.string :contact_2_phone
      t.string :contact_2_phone_2
      t.string :contact_3_name
      t.string :contact_3_phone
      t.string :contact_3_phone_2

      t.timestamps
    end
    add_index :branches, :customer_id
  end
end
