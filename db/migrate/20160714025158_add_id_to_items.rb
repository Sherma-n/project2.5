class AddIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :itinerary_id, :integer
  end
end
