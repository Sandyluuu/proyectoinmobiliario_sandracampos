class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :operation_type
      t.float :square_meters
      t.string :address
      t.string :contact
      t.string :image_url

      t.timestamps
    end
  end
end
