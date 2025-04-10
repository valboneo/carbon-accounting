class CreateCarbonCalculations < ActiveRecord::Migration[7.2]
  def change
    create_table :carbon_calculations do |t|
      t.references :infrastructure, null: false, foreign_key: true
      t.datetime :calculation_date
      t.decimal :total_carbon
      t.json :factors_used
      t.text :notes

      t.timestamps
    end
  end
end
