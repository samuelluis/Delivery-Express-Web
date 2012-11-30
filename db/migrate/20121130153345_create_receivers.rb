class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :code
      t.references :branch
      t.string :name
      t.integer :relationship

      t.timestamps
    end
    add_index :receivers, :branch_id
  end
end
