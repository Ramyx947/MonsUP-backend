class CreatePhysicalRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_ratings do |t|
      t.string :difficulty
      t.belongs_to :trip, index: true

      t.timestamps
    end
  end
end
