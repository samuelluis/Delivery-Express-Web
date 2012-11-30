class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :code
      t.references :employee
      t.date :date
      t.string :status

      t.timestamps
    end
    add_index :travels, :employee_id
  end
end
