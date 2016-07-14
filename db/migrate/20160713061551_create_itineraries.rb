class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|

      t.string :plan_id
      t.integer :dayNumber

      t.timestamps null: false
    end
  end
end
