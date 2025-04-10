class CreateInfrastructures < ActiveRecord::Migration[7.2]
  def change
    create_table :infrastructures do |t|
      t.string :name
      t.string :infrastructure_type
      t.decimal :energy_consumption
      t.decimal :carbon_footprint
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
