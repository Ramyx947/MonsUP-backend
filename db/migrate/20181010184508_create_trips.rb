class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :number_days
      t.string :country
      t.string :city
      t.string :category
      t.string :difficulty
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
