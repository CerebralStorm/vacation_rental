class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :address
      t.float :price
      t.integer :number_of_bedrooms
      t.integer :zip_code_id
      t.string :number_of_bathrooms
      t.integer :square_feet

      t.timestamps
    end
  end
end
