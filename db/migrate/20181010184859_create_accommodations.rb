class CreateAccommodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accommodations do |t|
      t.string :accommodation_type
      t.string :name
      t.string :address
      t.integer :nights
      t.belongs_to :day

      t.timestamps
    end
  end
end
