class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.references :travel
      t.references :branch
      t.integer :sequence

      t.timestamps
    end
    add_index :stops, :travel_id
    add_index :stops, :branch_id
  end
end
