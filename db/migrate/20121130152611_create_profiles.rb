class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.references :customer
      t.references :employee

      t.timestamps
    end
    add_index :profiles, :user_id
    add_index :profiles, :customer_id
    add_index :profiles, :employee_id
  end
end
