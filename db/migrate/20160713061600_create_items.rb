class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :location
      t.string :time
      t.timestamps null: false
    end
  end
end
