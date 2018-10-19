class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :title
      t.string :start_point
      t.string :end_point
      t.string :distance
      t.string :notes
      t.string :accommodation_type
      t.string :name
      t.string :address
      t.belongs_to :trip, foreign_key: true, index: true

      t.timestamps
    end
  end
end
